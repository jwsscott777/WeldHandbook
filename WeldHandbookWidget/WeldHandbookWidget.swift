//
//  WeldHandbookWidget.swift
//  WeldHandbookWidget
//
//  Created by JWSScott777 on 12/28/23.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
  //  var list: ListModel = lists[3]
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), listModel: lists[0])
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), listModel: lists.randomElement() ?? lists[0])
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        let currentDate = Date()
        guard let refreshDate = Calendar.current.date(byAdding: .day, value: 1, to: currentDate) else { return  }
        let entry = SimpleEntry(date: currentDate, listModel: lists.randomElement() ?? lists[0])

        let timeline = Timeline(entries: [entry], policy: .after(refreshDate))
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let listModel: ListModel

}

struct WeldHandbookWidgetEntryView : View {
    var entry: Provider.Entry
    @Environment(\.widgetFamily) var widgetFamily

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                backgroundGradient
                    .background(.ultraThinMaterial)
                Image("WeldBook")
                    .resizable()
                    .frame(
                        width: widgetFamily != .systemSmall ? 46 : 36,
                        height: widgetFamily != .systemSmall ? 46 : 36
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .offset(x: (geometry.size.width / 2) - 20, y: (geometry.size.height / -2) + 20)
                    .padding(.top, 12)
                    .padding(.trailing, 12)
                HStack {
                    Text("Weld Word Daily")
                        .foregroundStyle(.white)
                        .font(widgetFamily != .systemSmall ? .system(.footnote, design: .rounded) : .system(size: 08))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 4)
                        .background(
                            Color(red: 0, green: 0, blue: 0, opacity: 0.5)
                                .blendMode(.overlay)
                        )
                    .clipShape(Capsule())
                }// hs

                .offset(y: (geometry.size.height /  2) - 24)
                HStack(spacing: 0) {
                    Image(systemName: entry.listModel.image)
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.darkBlue)
                        .frame(
                            width: widgetFamily != .systemSmall ? 56 : 36,
                            height: widgetFamily != .systemSmall ? 56 : 36
                        )
                    Text(entry.listModel.title)
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .font(widgetFamily != .systemSmall ? .title3 : .system(size: 09))
                        .multilineTextAlignment(.center)

                } // vs
                .padding(.bottom)
                .padding(.top)
            } // zs

        } // geo
    }
}

struct WeldHandbookWidget: Widget {
    let kind: String = "WeldHandbookWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            if #available(iOS 17.0, *) {
                WeldHandbookWidgetEntryView(entry: entry)
                    .containerBackground(for: .widget) {
                        Color.darkBlue
                    }
            } else {
                WeldHandbookWidgetEntryView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("Welding Handbook")
        .description("Learn a new word about welding every day!.")
    }
}

#Preview(as: .systemSmall) {
    WeldHandbookWidget()
} timeline: {
    SimpleEntry(date: .now, listModel: lists[33])
}
#Preview(as: .systemMedium) {
    WeldHandbookWidget()
} timeline: {
    SimpleEntry(date: .now, listModel: lists[33])
}
#Preview(as: .systemLarge) {
    WeldHandbookWidget()
} timeline: {
    SimpleEntry(date: .now, listModel: lists[33])
}

var backgroundGradient: LinearGradient {
    return LinearGradient(gradient: Gradient(colors: [Color.indigo, Color.pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
}
