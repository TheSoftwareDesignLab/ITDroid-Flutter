.class public Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;
.super Lcom/artfulbits/aiCharts/Types/ChartPieType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;
    }
.end annotation


# static fields
.field public static final LINES_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLOTS_GAP_SCALE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLOTS_SIZE_SCALE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPLIT_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPLIT_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPLIT_VALUE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "pie-split_mode"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;

    const-class v2, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Percentage:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->SPLIT_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-split_value"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;

    const-class v2, Ljava/lang/Double;

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->SPLIT_VALUE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-split_point"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;

    const-class v2, Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->SPLIT_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-plots_scale"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;

    const-class v2, Ljava/lang/Double;

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->PLOTS_SIZE_SCALE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-plots_gap"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;

    const-class v2, Ljava/lang/Double;

    const-wide v3, 0x3f9eb851eb851eb8L    # 0.03

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->PLOTS_GAP_SCALE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-to-pie-line_color"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;

    const-class v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->LINES_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Types/ChartPieType;-><init>()V

    return-void
.end method

.method protected static computeTangents(FFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;)I
    .locals 9

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v0, p3, p0

    mul-float/2addr v0, v2

    sub-float v1, p4, p1

    mul-float/2addr v1, v2

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    mul-float v4, p2, p2

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    add-float v6, p2, v3

    cmpl-float v6, v5, v6

    if-gtz v6, :cond_0

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v5, v3

    if-gez v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sub-float v3, v4, v2

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    div-float/2addr v2, v3

    mul-float v3, v2, v2

    sub-float v3, v4, v3

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    mul-float v4, v2, v0

    div-float/2addr v4, v5

    mul-float/2addr v2, v1

    div-float/2addr v2, v5

    add-float v6, p0, v4

    mul-float v7, v3, v1

    div-float/2addr v7, v5

    add-float/2addr v6, v7

    add-float v7, p1, v2

    mul-float v8, v3, v0

    div-float/2addr v8, v5

    sub-float/2addr v7, v8

    add-float/2addr v4, p0

    mul-float/2addr v1, v3

    div-float/2addr v1, v5

    sub-float v1, v4, v1

    add-float/2addr v2, p1

    mul-float/2addr v0, v3

    div-float/2addr v0, v5

    add-float/2addr v0, v2

    cmpg-float v2, v7, v0

    if-gez v2, :cond_2

    invoke-virtual {p5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p6, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    :goto_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p6, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p5, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1
.end method


# virtual methods
.method protected computePointCorners(Lcom/artfulbits/aiCharts/Base/ChartPoint;FLandroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 6

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->EXPAND_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    float-to-double v2, p2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {p2}, Landroid/util/FloatMath;->cos(F)F

    move-result v3

    mul-float/2addr v3, v2

    invoke-static {p2}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v2, v4

    int-to-float v0, v0

    add-float/2addr v0, v3

    iput v0, p5, Landroid/graphics/PointF;->x:F

    iput v0, p4, Landroid/graphics/PointF;->x:F

    int-to-float v0, v1

    sub-float/2addr v0, v2

    iput v0, p4, Landroid/graphics/PointF;->y:F

    int-to-float v0, v1

    add-float/2addr v0, v2

    iput v0, p5, Landroid/graphics/PointF;->y:F

    :goto_0
    return-void

    :cond_0
    int-to-float v1, v0

    iget v2, p3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p4, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {p5, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0
.end method

.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 32

    const-wide/16 v7, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->PLOTS_SIZE_SCALE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->PLOTS_GAP_SCALE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->SPLIT_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v6, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->SPLIT_VALUE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v5, v6}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v20, Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v5, v5

    sub-double v5, v5, v17

    double-to-int v0, v5

    move/from16 v23, v0

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    const-wide/16 v26, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [D

    const/4 v9, 0x0

    const-wide/16 v28, 0x0

    aput-wide v28, v6, v9

    move-wide/from16 v0, v26

    invoke-direct {v5, v0, v1, v6}, Lcom/artfulbits/aiCharts/Base/ChartPoint;-><init>(D[D)V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getPalette()Lcom/artfulbits/aiCharts/Base/ChartPalette;

    move-result-object v6

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/artfulbits/aiCharts/Base/ChartPalette;->getColor(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setBackColor(Ljava/lang/Integer;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    move-wide/from16 v30, v7

    move-wide/from16 v8, v30

    move v7, v6

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v6

    if-ge v7, v6, :cond_0

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v26

    add-double v8, v8, v26

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-wide/from16 v30, v10

    move-wide/from16 v11, v30

    move v10, v6

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v6

    if-ge v10, v6, :cond_6

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v26

    sget-object v7, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Custom:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    if-ne v4, v7, :cond_1

    sget-object v7, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->SPLIT_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_1
    sget-object v7, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Position:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    if-ne v4, v7, :cond_2

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move/from16 v0, v23

    if-ge v7, v0, :cond_4

    :cond_2
    sget-object v7, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Value:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    if-ne v4, v7, :cond_3

    cmpg-double v7, v26, v17

    if-ltz v7, :cond_4

    :cond_3
    sget-object v7, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Percentage:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    if-ne v4, v7, :cond_5

    const-wide/high16 v28, 0x4059000000000000L    # 100.0

    mul-double v26, v26, v28

    div-double v26, v26, v8

    cmpg-double v7, v26, v17

    if-gez v7, :cond_5

    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v26

    add-double v11, v11, v26

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v10, 0x1

    move v10, v6

    goto :goto_1

    :cond_5
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v5, v11, v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setY(D)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v6, v4

    mul-double/2addr v6, v15

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v15, v4

    sub-double/2addr v15, v6

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    add-double v13, v13, v17

    div-double v13, v15, v13

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v15, v4

    sub-double v6, v15, v6

    sub-double/2addr v6, v13

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->left:I

    double-to-int v6, v6

    add-int/2addr v4, v6

    move-object/from16 v0, v19

    iput v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/Rect;->right:I

    double-to-int v6, v13

    sub-int/2addr v4, v6

    move-object/from16 v0, v20

    iput v4, v0, Landroid/graphics/Rect;->left:I

    const-wide v6, 0x4076800000000000L    # 360.0

    mul-double/2addr v6, v11

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    double-to-int v4, v6

    neg-int v4, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->drawPie(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Ljava/util/List;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->drawPie(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Ljava/util/List;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v23

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    int-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    double-to-float v6, v10

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->computePointCorners(Lcom/artfulbits/aiCharts/Base/ChartPoint;FLandroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->LINES_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v6, v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_7

    new-instance v15, Landroid/graphics/PointF;

    invoke-direct {v15}, Landroid/graphics/PointF;-><init>()V

    new-instance v16, Landroid/graphics/PointF;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/PointF;-><init>()V

    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getLineWidth()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v4, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_8

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v10, v4

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v11, v4

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v12, v4

    iget v13, v8, Landroid/graphics/PointF;->x:F

    iget v14, v8, Landroid/graphics/PointF;->y:F

    invoke-static/range {v10 .. v16}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->computeTangents(FFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;)I

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v17

    iget v0, v8, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    iget v0, v8, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_3
    iget v4, v9, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_9

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v10, v4

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v11, v4

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v12, v4

    iget v13, v9, Landroid/graphics/PointF;->x:F

    iget v14, v9, Landroid/graphics/PointF;->y:F

    invoke-static/range {v10 .. v16}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->computeTangents(FFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;)I

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v17

    iget v0, v9, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_7
    :goto_4
    return-void

    :cond_8
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v10, v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v11, v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v12, v4

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v13, v4

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v14, v4

    invoke-static/range {v10 .. v16}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->computeTangents(FFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;)I

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v17

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v0, v4

    move/from16 v18, v0

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v4

    move/from16 v19, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v10, v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v11, v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v12, v4

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v13, v4

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v4

    invoke-static/range {v10 .. v16}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->computeTangents(FFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;)I

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v17

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v0, v4

    move/from16 v18, v0

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v4

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4
.end method
