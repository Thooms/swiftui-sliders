import SwiftUI
import Sliders

struct VerticalSliderExamplesView: View {
    @EnvironmentObject var model: Model

    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                Group {
                    VSlider(value: $model.value1)
                    
                    VSlider(value: $model.value2, thumbSize: CGSize(width: 16, height: 32))
                        
                    VSlider(value: $model.value3, track:
                        LinearGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple, .pink]), startPoint: .bottom, endPoint: .top)
                            .frame(width: 8)
                            .cornerRadius(4)
                    )

                    VSlider(
                        value: $model.value4,
                        track:
                            VTrack(
                                value: model.value4,
                                view: Rectangle()
                                    .foregroundColor(.green)
                                    .frame(width: 8),
                                leadingOffset: 8,
                                trailingOffset: 8
                            )
                            .background(Color.white)
                            .frame(width: 8)
                            .cornerRadius(3)
                            .overlay(
                                Capsule().strokeBorder(Color.white.opacity(0.5), lineWidth: 1)
                            )
                            .animation(
                                .spring(response: 0.7, dampingFraction: 0.4)
                            ),
                        thumbSize: CGSize(width: 16, height: 16)
                    )
                    
                    VSlider(
                        value: $model.value5,
                        track:
                            LinearGradient(gradient: Gradient(colors: [.purple, .blue, .purple]), startPoint: .bottom, endPoint: .top)
                                .frame(width: 6)
                                .cornerRadius(3),
                        thumbSize: CGSize(width: 16, height: 48)
                    )
                    
                    VSlider(
                        value: $model.value6,
                        track:
                            VTrack(
                                value: model.value6,
                                view: LinearGradient(gradient: Gradient(colors: [.purple, .blue, .purple]), startPoint: .bottom, endPoint: .top),
                                mask: Rectangle()
                            )
                            .overlay(
                                Capsule().strokeBorder(Color.white.opacity(0.5), lineWidth: 2)
                            )
                            .background(Capsule().foregroundColor(Color.secondary.opacity(0.25)))
                            .frame(width: 32)
                            .cornerRadius(16)
                            .animation(.easeInOut(duration: 0.5)),
                        thumb: EmptyView(),
                        thumbSize: .zero
                    )
                }
                
                Group {
                    VRangeSlider(range: $model.range1)
                    
                    VRangeSlider(
                        range: $model.range2,
                        track:
                            VRangeTrack(
                                range: model.range2,
                                view: Capsule().foregroundColor(.purple),
                                mask: Rectangle(),
                                lowerLeadingOffset: 16,
                                lowerTrailingOffset: 48,
                                upperLeadingOffset: 48,
                                upperTrailingOffset: 16
                            )
                            .background(Capsule().foregroundColor(Color.purple.opacity(0.25)))
                            .frame(width: 8),
                        lowerThumb: Circle().foregroundColor(.purple),
                        upperThumb: Circle().foregroundColor(.purple),
                        thumbSize: CGSize(width: 32, height: 32)
                    )
                    
                    VRangeSlider(
                        range: $model.range3,
                        track: VRangeTrack(
                            range: model.range3,
                            value: LinearGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple, .pink]), startPoint: .bottom, endPoint: .top),
                            lowerLeadingOffset: 8,
                            lowerTrailingOffset: 24,
                            upperLeadingOffset: 24,
                            upperTrailingOffset: 8
                        )
                        .background(LinearGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple, .pink]), startPoint: .bottom, endPoint: .top).opacity(0.25))
                        .frame(width: 8)
                        .cornerRadius(4),
                        thumbSize: CGSize(width: 32, height: 16)
                    )
                    
                    VRangeSlider(
                        range: $model.range4,
                        track:
                            VRangeTrack(
                                range: model.range4,
                                view: LinearGradient(gradient: Gradient(colors: [.purple, .blue, .purple]), startPoint: .bottom, endPoint: .top),
                                mask: Rectangle(),
                                lowerLeadingOffset: 8,
                                lowerTrailingOffset: 24,
                                upperLeadingOffset: 24,
                                upperTrailingOffset: 8
                            )
                            .mask(Ellipse())
                            .background(Ellipse().foregroundColor(Color.secondary.opacity(0.25)))
                            .overlay(Ellipse().strokeBorder(Color.white.opacity(0.5), lineWidth: 1))
                            .padding(.horizontal, 8),
                        thumbSize: CGSize(width: 64, height: 16)
                    )
                    .frame(width: 64)
                    
                    VRangeSlider(
                        range: $model.range5,
                        track:
                            VRangeTrack(
                                range: model.range5,
                                view: LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .red]), startPoint: .bottom, endPoint: .top),
                                mask: Rectangle(),
                                lowerLeadingOffset: 16,
                                lowerTrailingOffset: 48,
                                upperLeadingOffset: 48,
                                upperTrailingOffset: 16
                            )
                            .background(Color.secondary.opacity(0.25))
                            .cornerRadius(16),
                        lowerThumb: Capsule().foregroundColor(.white).shadow(radius: 3),
                        upperThumb: Capsule().foregroundColor(.white).shadow(radius: 3),
                        thumbSize: CGSize(width: 64, height: 32)
                    )
                    .frame(width: 64)
                }
            }

        }
        .padding()
    }
}

struct VerticalSliderExamplesView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalSliderExamplesView().environmentObject(Model.preview)
    }
}
