//
//  IMGLYInstanceFactory.swift
//  imglyKit
//
//  Created by Carsten Przyluczky on 03/02/15.
//  Copyright (c) 2015 9elements GmbH. All rights reserved.
//

import Foundation
import GLKit

/**
  A singleton that is out to create objects. It is used within the SDK to 
  create filters, views, viewcontrollers and such.
*/
@objc public class IMGLYInstanceFactory {
    public class var sharedInstance : IMGLYInstanceFactory {
        struct Static {
            static let instance = IMGLYInstanceFactory()
        }
        return Static.instance
    }
    
    /**
    Creates a response filter with the specified type.
    
    :param: type The type of the filter that should be created.
    
    :returns: A CIFilter object that realizes the desired filter.
    */
    public func effectFilterWithType(type: IMGLYFilterType) -> IMGLYResponseFilter {
        switch(type) {
        case IMGLYFilterType.None:
            return IMGLYNoneFilter()
        case IMGLYFilterType.K1:
            return IMGLYK1Filter()
        case IMGLYFilterType.K2:
            return IMGLYK2Filter()
        case IMGLYFilterType.K6:
            return IMGLYK6Filter()
        case IMGLYFilterType.KDynamic:
            return IMGLYKDynamicFilter()
        case IMGLYFilterType.Fridge:
            return IMGLYFridgeFilter()
        case IMGLYFilterType.Breeze:
            return IMGLYBreezeFilter()
        case IMGLYFilterType.Orchid:
            return IMGLYOrchidFilter()
        case IMGLYFilterType.Chest:
            return IMGLYChestFilter()
        case IMGLYFilterType.Front:
            return IMGLYFrontFilter()
        case IMGLYFilterType.Fixie:
            return IMGLYFixieFilter()
        case IMGLYFilterType.X400:
            return IMGLYX400Filter()
        case IMGLYFilterType.BW:
            return IMGLYBWFilter()
        case IMGLYFilterType.AD1920:
            return IMGLYAD1920Filter()
        case IMGLYFilterType.Lenin:
            return IMGLYLeninFilter()
        case IMGLYFilterType.Quozi:
            return IMGLYQuoziFilter()
        case IMGLYFilterType.Pola669:
            return IMGLYPola669Filter()
        case IMGLYFilterType.PolaSX:
            return IMGLYPolaSXFilter()
        case IMGLYFilterType.Food:
            return IMGLYFoodFilter()
        case IMGLYFilterType.Glam:
            return IMGLYGlamFilter()
        case IMGLYFilterType.Celsius:
            return IMGLYCelsiusFilter()
        case IMGLYFilterType.Texas:
            return IMGLYTexasFilter()
        case IMGLYFilterType.Lomo:
            return IMGLYLomoFilter()
        case IMGLYFilterType.Gobblin:
            return IMGLYGobblinFilter()
        case IMGLYFilterType.Sin:
            return IMGLYSinFilter()
        case IMGLYFilterType.Mellow:
            return IMGLYMellowFilter()
        case IMGLYFilterType.Sunny:
            return IMGLYSunnyFilter()
        case IMGLYFilterType.A15:
            return IMGLYA15Filter()
        case IMGLYFilterType.Soft:
            return IMGLYSoftFilter()
        case IMGLYFilterType.Blues:
            return IMGLYBluesFilter()
        case IMGLYFilterType.Elder:
            return IMGLYElderFilter()
        case IMGLYFilterType.Sunset:
            return IMGLYSunsetFilter()
        case IMGLYFilterType.Evening:
            return IMGLYEveningFilter()
        case IMGLYFilterType.Steel:
            return IMGLYSteelFilter()
        case IMGLYFilterType.Seventies:
            return IMGLYSeventiesFilter()
        case IMGLYFilterType.HighContrast:
            return IMGLYHighContrastFilter()
        case IMGLYFilterType.BlueShadows:
            return IMGLYBlueShadowsFilter()
        case IMGLYFilterType.Highcarb:
            return IMGLYHighcarbFilter()
        case IMGLYFilterType.Eighties:
            return IMGLYEightiesFilter()
        case IMGLYFilterType.Colorful:
            return IMGLYColorfulFilter()
        case IMGLYFilterType.Lomo100:
            return IMGLYLomo100Filter()
        case IMGLYFilterType.Pro400:
            return IMGLYPro400Filter()
        case IMGLYFilterType.Twilight:
            return IMGLYTwilightFilter()
        case IMGLYFilterType.CottonCandy:
            return IMGLYCottonCandyFilter()
        case IMGLYFilterType.Mono3200:
            return IMGLYMono3200Filter()
        case IMGLYFilterType.BlissfulBlue:
            return IMGLYBlissfulBlueFilter()
        case IMGLYFilterType.Pale:
            return IMGLYPaleFilter()
        case IMGLYFilterType.Settled:
            return IMGLYSettledFilter()
        case IMGLYFilterType.Cool:
            return IMGLYCoolFilter()
        case IMGLYFilterType.Litho:
            return IMGLYLithoFilter()
        case IMGLYFilterType.Prelude:
            return IMGLYPreludeFilter()
        case IMGLYFilterType.Nepal:
            return IMGLYNepalFilter()
        case IMGLYFilterType.Ancient:
            return IMGLYAncientFilter()
        case IMGLYFilterType.Pitched:
            return IMGLYPitchedFilter()
        case IMGLYFilterType.Lucid:
            return IMGLYLucidFilter()
        case IMGLYFilterType.Creamy:
            return IMGLYCreamyFilter()
        case IMGLYFilterType.Keen:
            return IMGLYKeenFilter()
        case IMGLYFilterType.Tender:
            return IMGLYTenderFilter()
        case IMGLYFilterType.Bleached:
            return IMGLYBleachedFilter()
        case IMGLYFilterType.BleachedBlue:
            return IMGLYBleachedBlueFilter()
        case IMGLYFilterType.Fall:
            return IMGLYFallFilter()
        case IMGLYFilterType.Winter:
            return IMGLYWinterFilter()
        case IMGLYFilterType.SepiaHigh:
            return IMGLYSepiaHighFilter()
        case IMGLYFilterType.Summer:
            return IMGLYSummerFilter()
        case IMGLYFilterType.Classic:
            return IMGLYClassicFilter()
        case IMGLYFilterType.NoGreen:
            return IMGLYNoGreenFilter()
        case IMGLYFilterType.Neat:
            return IMGLYNeatFilter()
        case IMGLYFilterType.Plate:
            return IMGLYPlateFilter()
        }
    }
    
    /**
    Creates a text filter.
    
    :returns: A text filter
    */
    public func textFilter() -> IMGLYTextFilter {
        return IMGLYTextFilter()
    }
    
    /**
    Creates a sticker filter.
    
    :returns: A sticker filter
    */
    public func stickerFilter() -> IMGLYStickerFilter {
        return IMGLYStickerFilter()
    }

    /**
    Creates a crop filter.
    
    :returns: A crop filter
    */
    public func orientationCropFilter() -> IMGLYOrientationCropFilter {
        return IMGLYOrientationCropFilter()
    }
    
    /**
    Creates a tiltshift filter.
    
    :returns: A tiltshift filter.
    */
    public func tiltShiftFilter() -> IMGLYTiltshiftFilter {
        return IMGLYTiltshiftFilter()
    }
    
    /**
    Creates a color-adjustment filter.
    
    :returns: A color-adjustment filter.
    */
    public func colorAdjustmentFilter() -> IMGLYContrastBrightnessSaturationFilter {
        return IMGLYContrastBrightnessSaturationFilter()
    }
    
    /**
    Creates an enhancement filter.
    
    :returns: A enhancement filter.
    */
    public func enhancementFilter() -> IMGLYEnhancementFilter {
        return IMGLYEnhancementFilter()
    }
    
    /**
    Returns the list of filters, that should be available in the dialogs.
    Change this list to select the set of filters you want to present to the user.
    :returns: An array of filter types.
    */
    public var availableFilterList: [IMGLYFilterType] {
        return [
            .None,
            .K1,
            .K2,
            .K6,
            .KDynamic,
            .Fridge,
            .Breeze,
            .Orchid,
            .Chest,
            .Front,
            .Fixie,
            .X400,
            .BW,
            .AD1920,
            .Lenin,
            .Quozi,
            .Pola669,
            .PolaSX,
            .Food,
            .Glam,
            .Celsius,
            .Texas,
            .Lomo,
            .Gobblin,
            .Sin,
            .Mellow,
            .Sunny,
            .A15,
            .Soft,
            .Blues,
            .Elder,
            .Sunset,
            .Evening,
            .Steel,
            .Seventies,
            .HighContrast,
            .BlueShadows,
            .Highcarb,
            .Eighties,
            .Colorful,
            .Lomo100,
            .Pro400,
            .Twilight,
            .CottonCandy,
            .Mono3200,
            .BlissfulBlue,
            .Pale,
            .Settled,
            .Cool,
            .Litho,
            .Prelude,
            .Nepal,
            .Ancient,
            .Pitched,
            .Lucid,
            .Creamy,
            .Keen,
            .Tender,
            .Bleached,
            .BleachedBlue,
            .Fall,
            .Winter,
            .SepiaHigh,
            .Summer,
            .Classic,
            .NoGreen,
            .Neat,
            .Plate
        ]
    }
    
    // MARK: - Editor View Controllers
    
    /**
    Return the viewcontroller according to the button-type.
    This is used by the main menu.
    
    :param: type The type of the button pressed.
    
    :returns: A viewcontroller according to the button-type.
    */
    public func viewControllerForButtonType(type: IMGLYMainMenuButtonType, withFixedFilterStack fixedFilterStack: IMGLYFixedFilterStack) -> IMGLYSubEditorViewController? {
        switch (type) {
        case IMGLYMainMenuButtonType.Filter:
            return filterEditorViewControllerWithFixedFilterStack(fixedFilterStack)
        case IMGLYMainMenuButtonType.Stickers:
            return stickersEditorViewControllerWithFixedFilterStack(fixedFilterStack)
        case IMGLYMainMenuButtonType.Orientation:
            return orientationEditorViewControllerWithFixedFilterStack(fixedFilterStack)
        case IMGLYMainMenuButtonType.Focus:
            return focusEditorViewControllerWithFixedFilterStack(fixedFilterStack)
        case IMGLYMainMenuButtonType.Crop:
            return cropEditorViewControllerWithFixedFilterStack(fixedFilterStack)
        case IMGLYMainMenuButtonType.Brightness:
            return brightnessEditorViewControllerWithFixedFilterStack(fixedFilterStack)
        case IMGLYMainMenuButtonType.Contrast:
            return contrastEditorViewControllerWithFixedFilterStack(fixedFilterStack)
        case IMGLYMainMenuButtonType.Saturation:
            return saturationEditorViewControllerWithFixedFilterStack(fixedFilterStack)
        case IMGLYMainMenuButtonType.Text:
            return textEditorViewControllerWithFixedFilterStack(fixedFilterStack)
        default:
            return nil
        }
    }
    
    public func filterEditorViewControllerWithFixedFilterStack(fixedFilterStack: IMGLYFixedFilterStack) -> IMGLYFilterEditorViewController {
        return IMGLYFilterEditorViewController(fixedFilterStack: fixedFilterStack)
    }
    
    public func stickersEditorViewControllerWithFixedFilterStack(fixedFilterStack: IMGLYFixedFilterStack) -> IMGLYStickersEditorViewController {
        return IMGLYStickersEditorViewController(fixedFilterStack: fixedFilterStack)
    }
    
    public func orientationEditorViewControllerWithFixedFilterStack(fixedFilterStack: IMGLYFixedFilterStack) -> IMGLYOrientationEditorViewController {
        return IMGLYOrientationEditorViewController(fixedFilterStack: fixedFilterStack)
    }
    
    public func focusEditorViewControllerWithFixedFilterStack(fixedFilterStack: IMGLYFixedFilterStack) -> IMGLYFocusEditorViewController {
        return IMGLYFocusEditorViewController(fixedFilterStack: fixedFilterStack)
    }
    
    public func cropEditorViewControllerWithFixedFilterStack(fixedFilterStack: IMGLYFixedFilterStack) -> IMGLYCropEditorViewController {
        return IMGLYCropEditorViewController(fixedFilterStack: fixedFilterStack)
    }
    
    public func brightnessEditorViewControllerWithFixedFilterStack(fixedFilterStack: IMGLYFixedFilterStack) -> IMGLYBrightnessEditorViewController {
        return IMGLYBrightnessEditorViewController(fixedFilterStack: fixedFilterStack)
    }
    
    public func contrastEditorViewControllerWithFixedFilterStack(fixedFilterStack: IMGLYFixedFilterStack) -> IMGLYContrastEditorViewController {
        return IMGLYContrastEditorViewController(fixedFilterStack: fixedFilterStack)
    }
    
    public func saturationEditorViewControllerWithFixedFilterStack(fixedFilterStack: IMGLYFixedFilterStack) -> IMGLYSaturationEditorViewController {
        return IMGLYSaturationEditorViewController(fixedFilterStack: fixedFilterStack)
    }

    public func textEditorViewControllerWithFixedFilterStack(fixedFilterStack: IMGLYFixedFilterStack) -> IMGLYTextEditorViewController {
        return IMGLYTextEditorViewController(fixedFilterStack: fixedFilterStack)
    }
    
    // MARK: - Gradient Views
    
    public func circleGradientView() -> IMGLYCircleGradientView {
        return IMGLYCircleGradientView(frame: CGRectZero)
    }

    public func boxGradientView() -> IMGLYBoxGradientView {
        return IMGLYBoxGradientView(frame: CGRectZero)
    }
    
    // MARK: - Font Related
    
    /**
    Returns a list that determins what fonts will be available within
    the text-dialog.
    
    :returns: An array of fontnames.
    */
    public var availableFontsList: [String] {
        return [
            "AmericanTypewriter",
            "Avenir-Heavy",
            "ChalkboardSE-Regular",
            "ArialMT",
            "BanglaSangamMN",
            "Liberator",
            "Muncie",
            "Abraham Lincoln",
            "Airship 27",
            "Arvil",
            "Bender",
            "Blanch",
            "Cubano",
            "Franchise",
            "Geared Slab",
            "Governor",
            "Haymaker",
            "Homestead",
            "Maven Pro Light",
            "Mensch",
            "Sullivan",
            "Tommaso",
            "Valencia",
            "Vevey"
        ]
    }
    
    public func fontImporter() -> IMGLYFontImporter {
        return IMGLYFontImporter()
    }
    
    // MARK: - Helpers
    
    public func cropRectComponent() -> IMGLYCropRectComponent {
        return IMGLYCropRectComponent()
    }
    

}