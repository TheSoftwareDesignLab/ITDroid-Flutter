.class public final Lcom/artfulbits/aiCharts/Extensions/ShapeHelper;
.super Ljava/lang/Object;


# static fields
.field public static final CIRCLE:Landroid/graphics/drawable/shapes/Shape;

.field public static final DIAMOND:Landroid/graphics/drawable/shapes/Shape;

.field public static final HLINE:Landroid/graphics/drawable/shapes/Shape;

.field public static final RECTANGLE:Landroid/graphics/drawable/shapes/Shape;

.field public static final TRIANGLE:Landroid/graphics/drawable/shapes/Shape;

.field public static final VLINE:Landroid/graphics/drawable/shapes/Shape;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v5, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v7, v5}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-virtual {v1, v5, v7}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v1, v6, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3, v7, v5}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v7, v7, v7, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    new-instance v5, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v5}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    sput-object v5, Lcom/artfulbits/aiCharts/Extensions/ShapeHelper;->RECTANGLE:Landroid/graphics/drawable/shapes/Shape;

    new-instance v5, Landroid/graphics/drawable/shapes/PathShape;

    invoke-direct {v5, v0, v6, v6}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    sput-object v5, Lcom/artfulbits/aiCharts/Extensions/ShapeHelper;->DIAMOND:Landroid/graphics/drawable/shapes/Shape;

    new-instance v0, Landroid/graphics/drawable/shapes/PathShape;

    invoke-direct {v0, v1, v6, v6}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    sput-object v0, Lcom/artfulbits/aiCharts/Extensions/ShapeHelper;->TRIANGLE:Landroid/graphics/drawable/shapes/Shape;

    new-instance v0, Landroid/graphics/drawable/shapes/PathShape;

    invoke-direct {v0, v4, v6, v6}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    sput-object v0, Lcom/artfulbits/aiCharts/Extensions/ShapeHelper;->CIRCLE:Landroid/graphics/drawable/shapes/Shape;

    new-instance v0, Landroid/graphics/drawable/shapes/PathShape;

    invoke-direct {v0, v2, v6, v6}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    sput-object v0, Lcom/artfulbits/aiCharts/Extensions/ShapeHelper;->HLINE:Landroid/graphics/drawable/shapes/Shape;

    new-instance v0, Landroid/graphics/drawable/shapes/PathShape;

    invoke-direct {v0, v3, v6, v6}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    sput-object v0, Lcom/artfulbits/aiCharts/Extensions/ShapeHelper;->VLINE:Landroid/graphics/drawable/shapes/Shape;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/graphics/drawable/shapes/Shape;I)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method public static build3DShpere()Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v0, 0x3

    const v1, 0x3eb33333    # 0.35f

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    new-array v5, v0, [F

    fill-array-data v5, :array_1

    new-instance v0, Landroid/graphics/RadialGradient;

    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    sget-object v2, Lcom/artfulbits/aiCharts/Extensions/ShapeHelper;->CIRCLE:Landroid/graphics/drawable/shapes/Shape;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-object v1

    nop

    :array_0
    .array-data 4
        -0x1
        -0x777778
        -0x1000000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data
.end method
