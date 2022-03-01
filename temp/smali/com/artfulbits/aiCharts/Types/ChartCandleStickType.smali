.class public Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# static fields
.field public static final PRICE_DOWN_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRICE_UP_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "candle-price_up"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;

    const-class v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->PRICE_UP_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "candle-price_down"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;

    const-class v2, Ljava/lang/Integer;

    const/high16 v3, -0x1000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->PRICE_DOWN_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->FLAG_SIDE_BY_SIDE:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->FLAG_SUPPORT_3D:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 36

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual/range {p1 .. p1}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getSideBySideOffset()Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object v28

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v4

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v3

    iget v0, v4, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    move/from16 v29, v0

    iget v0, v4, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    move/from16 v30, v0

    iget v0, v4, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->OpenValueIndex:I

    move/from16 v31, v0

    iget v0, v4, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->CloseValueIndex:I

    move/from16 v32, v0

    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->PRICE_UP_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v5, v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v33

    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->PRICE_DOWN_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v5, v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v34

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v9, v4, -0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v4

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v6

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v9}, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v8

    invoke-static/range {v3 .. v9}, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v35

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    new-instance v15, Landroid/graphics/PointF;

    invoke-direct {v15}, Landroid/graphics/PointF;-><init>()V

    new-instance v25, Landroid/graphics/RectF;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/RectF;-><init>()V

    move/from16 v27, v8

    :goto_0
    move/from16 v0, v27

    move/from16 v1, v35

    if-gt v0, v1, :cond_1

    move/from16 v0, v27

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v26, v4

    check-cast v26, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual/range {v26 .. v26}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    invoke-virtual/range {v28 .. v28}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->center()D

    move-result-wide v6

    add-double v5, v4, v6

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v7

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    invoke-virtual/range {v26 .. v26}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    invoke-virtual/range {v28 .. v28}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->center()D

    move-result-wide v6

    add-double v11, v4, v6

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v13

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    invoke-virtual/range {v26 .. v26}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    add-double v17, v4, v6

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v19

    invoke-virtual/range {v26 .. v26}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    add-double v21, v4, v6

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v23

    move-object/from16 v16, p1

    invoke-virtual/range {v16 .. v25}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getRect(DDDDLandroid/graphics/RectF;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v26

    invoke-virtual {v4, v9, v15, v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v4

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v34

    invoke-virtual {v4, v0, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;I)V

    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->strokeRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    add-int/lit8 v8, v27, 0x1

    move/from16 v27, v8

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v33

    invoke-virtual {v4, v0, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getRequiredUsages()[Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const/4 v1, 0x0

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->LowValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->HighValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->OpenValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->CloseValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getYRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 4

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->OpenValueIndex:I

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->CloseValueIndex:I

    aput v0, v1, v2

    invoke-static {p0, p1, p2, v1}, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->computeYRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;[I)V

    return-void
.end method
