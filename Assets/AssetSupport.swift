import AssetCatalogAwarePre13

/// This source file is not meant to be customized.
/// It *can* be but, for most applications, it need not be.

private final class AssetBundleClass {}

public struct Assets: StringCatalogAware, ColorCatalogAware, AssetCatalogStaticApiProvider {

    public init() {}

    public var catalogBundleClass: AnyClass { AssetBundleClass.self }

}
