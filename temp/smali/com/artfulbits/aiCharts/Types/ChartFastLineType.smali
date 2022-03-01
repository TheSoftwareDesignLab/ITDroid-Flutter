.class public Lcom/artfulbits/aiCharts/Types/ChartFastLineType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# static fields
.field public static final BREAK_DELTA:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final BREAK_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final BREAK_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartFastLineType;->BREAK_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_DELTA:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartFastLineType;->BREAK_DELTA:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartFastLineType;->BREAK_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 20

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v14}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v14}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v15

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v2

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v4

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v4

    sget-object v6, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v14, v6}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    sget-object v8, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->None:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    if-eq v6, v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    sget-object v9, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->Auto:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    if-ne v6, v9, :cond_1

    const/4 v6, 0x1

    move v9, v6

    :goto_1
    sget-object v6, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_DELTA:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v14, v6}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    if-eqz v9, :cond_b

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    move v10, v6

    :goto_3
    const/4 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/artfulbits/aiCharts/Types/ChartFastLineType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v6

    invoke-static/range {v1 .. v7}, Lcom/artfulbits/aiCharts/Types/ChartFastLineType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v18

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    const/4 v11, 0x1

    move-object v12, v2

    move v13, v6

    :goto_4
    move/from16 v0, v18

    if-gt v13, v0, :cond_8

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v8}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v3

    iget v2, v15, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    invoke-virtual {v8, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v5

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    if-eqz v10, :cond_6

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v2

    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    cmpg-double v2, v2, v16

    if-gtz v2, :cond_3

    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_a

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v14}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->strokePath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    const/4 v2, 0x1

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    :goto_6
    if-eqz v2, :cond_7

    iget v2, v7, Landroid/graphics/PointF;->x:F

    iget v3, v7, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v2, 0x0

    :goto_7
    add-int/lit8 v6, v13, 0x1

    move v11, v2

    move-object v12, v8

    move v13, v6

    goto :goto_4

    :cond_0
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v6, 0x0

    move v9, v6

    goto/16 :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_5

    :cond_4
    sget-object v2, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v12, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    iget v3, v7, Landroid/graphics/PointF;->x:F

    iget v4, v7, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7

    :cond_8
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0, v14}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->strokePath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    :cond_9
    return-void

    :cond_a
    move v2, v11

    goto :goto_6

    :cond_b
    move v10, v8

    goto/16 :goto_3
.end method

.method public drawMarkers(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 0

    return-void
.end method
