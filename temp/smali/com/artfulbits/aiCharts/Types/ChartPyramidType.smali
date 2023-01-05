.class public Lcom/artfulbits/aiCharts/Types/ChartPyramidType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Types/ChartPyramidType$Style;
    }
.end annotation


# static fields
.field public static final GAP_RATIO:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final MINIMAL:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Lcom/artfulbits/aiCharts/Types/ChartPyramidType$Style;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "pyramid-style"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;

    const-class v2, Lcom/artfulbits/aiCharts/Types/ChartPyramidType$Style;

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartPyramidType$Style;->Surface:Lcom/artfulbits/aiCharts/Types/ChartPyramidType$Style;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pyramid-minimal"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;

    const-class v2, Ljava/lang/Float;

    const v3, 0x3d4ccccd    # 0.05f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->MINIMAL:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pyramid-gap_ratio"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;

    const-class v2, Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->GAP_RATIO:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->a:[D

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->FLAG_COLOR_PER_POINT:I

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->m_flags:I

    return-void
.end method

.method private a(DD)D
    .locals 7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, p1

    neg-double v4, p3

    iget-object v6, p0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->a:[D

    invoke-static/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Base/MathUtils;->solveQuadratic(DDD[D)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->a:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->a:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 31

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v4

    iget v10, v4, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->toArray()[Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artfulbits/aiCharts/Types/ChartPyramidType$Style;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v0, v6

    move/from16 v18, v0

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float v19, v6, v7

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v7, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->GAP_RATIO:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v11, v6

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v7, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->MINIMAL:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v13, v6

    const/4 v9, 0x0

    sget-object v6, Lcom/artfulbits/aiCharts/Types/ChartPyramidType$Style;->Surface:Lcom/artfulbits/aiCharts/Types/ChartPyramidType$Style;

    if-ne v4, v6, :cond_6

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v16

    array-length v15, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v15, :cond_0

    aget-object v21, v16, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    add-double v6, v6, v21

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v21, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->a(DD)D

    move-result-wide v21

    new-array v0, v9, [D

    move-object/from16 v23, v0

    new-array v0, v9, [D

    move-object/from16 v24, v0

    mul-double/2addr v13, v6

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_1

    aget-object v15, v16, v4

    invoke-virtual {v15, v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->a(DD)D

    move-result-wide v25

    float-to-double v6, v8

    aput-wide v6, v23, v4

    float-to-double v6, v8

    add-double v6, v6, v25

    aput-wide v6, v24, v4

    float-to-double v6, v8

    add-double v6, v6, v25

    float-to-double v0, v8

    move-wide/from16 v27, v0

    mul-double v29, v11, v21

    add-double v25, v25, v29

    add-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-float v8, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v21, v8, v6

    const/4 v4, 0x0

    move v15, v4

    :goto_2
    move-object/from16 v0, v16

    array-length v4, v0

    if-ge v15, v4, :cond_c

    aget-object v14, v16, v15

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-double v6, v4

    move/from16 v0, v18

    float-to-double v8, v0

    mul-double v8, v8, v21

    aget-wide v10, v23, v15

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 v25, v0

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-double v6, v4

    move/from16 v0, v18

    float-to-double v8, v0

    mul-double v8, v8, v21

    aget-wide v10, v24, v15

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 v26, v0

    move/from16 v0, v19

    float-to-double v6, v0

    mul-double v6, v6, v21

    aget-wide v8, v23, v15

    mul-double/2addr v6, v8

    double-to-float v11, v6

    move/from16 v0, v19

    float-to-double v6, v0

    mul-double v6, v6, v21

    aget-wide v8, v24, v15

    mul-double/2addr v6, v8

    double-to-float v9, v6

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    add-float v6, v25, v26

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    move-object/from16 v0, p1

    iget v7, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v8, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    sub-float v8, v26, v25

    const/4 v13, 0x0

    move v10, v9

    move v12, v11

    invoke-virtual/range {v4 .. v14}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPyramid3D(FFFFFFFFZLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    :cond_2
    :goto_3
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v14}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v14}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4

    :cond_3
    new-instance v4, Landroid/graphics/PointF;

    const/high16 v6, 0x3f000000    # 0.5f

    add-float v7, v25, v26

    mul-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v4}, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;)V

    :cond_4
    add-int/lit8 v4, v15, 0x1

    move v15, v4

    goto/16 :goto_2

    :cond_5
    sub-float v4, v5, v11

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v4, v5, v11

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v4, v5, v9

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v4, v5, v9

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v14, v6}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v14}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    const/4 v4, 0x0

    :goto_4
    move/from16 v0, v20

    if-ge v4, v0, :cond_7

    aget-object v21, v16, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    add-double v7, v7, v21

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    mul-double/2addr v13, v7

    const-wide/16 v7, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    const/4 v4, 0x0

    :goto_5
    move/from16 v0, v20

    if-ge v4, v0, :cond_8

    aget-object v21, v16, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v21

    add-double v7, v7, v21

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v4, v9, -0x1

    int-to-double v0, v4

    move-wide/from16 v22, v0

    mul-double v22, v22, v11

    sub-double v20, v20, v22

    div-double v7, v20, v7

    move-object/from16 v0, v16

    array-length v9, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v9, :cond_c

    aget-object v20, v16, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v21

    mul-double v21, v21, v7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v24, v18, v6

    add-float v23, v23, v24

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v21

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    add-float v24, v24, v23

    mul-float v25, v19, v6

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v26, v0

    float-to-double v0, v6

    move-wide/from16 v28, v0

    add-double v28, v28, v21

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    sub-float v27, v5, v25

    move/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v25, v25, v5

    move/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v25, v5, v26

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v25, v5, v26

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-virtual {v0, v15, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v15, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {v15}, Landroid/graphics/Path;->reset()V

    float-to-double v0, v6

    move-wide/from16 v25, v0

    add-double v21, v21, v11

    add-double v21, v21, v25

    move-wide/from16 v0, v21

    double-to-float v6, v0

    invoke-virtual/range {v20 .. v20}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v21

    if-nez v21, :cond_a

    invoke-virtual/range {v20 .. v20}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    if-eqz v21, :cond_b

    :cond_a
    new-instance v21, Landroid/graphics/PointF;

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v23, v23, v24

    mul-float v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v5, v1}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;)V

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    :cond_c
    return-void
.end method

.method public drawMarkers(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 0

    return-void
.end method

.method public getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->None:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    return-object v0
.end method
