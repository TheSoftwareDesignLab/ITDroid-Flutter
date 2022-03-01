.class public Lcom/artfulbits/aiCharts/Types/ChartStepLineType;
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

.field public static final HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVERSED:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
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
    .locals 4

    const-string v0, "step_line-inverted"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->INVERSED:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->BREAK_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_DELTA:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->BREAK_DELTA:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->BREAK_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 26

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v2

    iget v0, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->INVERSED:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v3, v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v8, v3, -0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v3

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v5

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v5

    sget-object v7, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v10, v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    sget-object v9, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->None:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    if-eq v7, v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    sget-object v11, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->Auto:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    if-ne v7, v11, :cond_3

    const/4 v7, 0x1

    move v14, v7

    :goto_1
    sget-object v7, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_DELTA:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v10, v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    sget-object v7, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v10, v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v20

    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    if-eqz v14, :cond_c

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_2
    move v15, v7

    :goto_3
    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v7

    invoke-static/range {v2 .. v8}, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v22

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13}, Landroid/graphics/PointF;-><init>()V

    new-instance v23, Landroid/graphics/PointF;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/PointF;-><init>()V

    new-instance v24, Landroid/graphics/PointF;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v9

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v11

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v4, v7, 0x1

    move-object v10, v3

    move v12, v4

    :goto_4
    move/from16 v0, v22

    if-gt v12, v0, :cond_b

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v11}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v6

    move-object/from16 v3, p1

    move-object/from16 v8, v23

    invoke-virtual/range {v3 .. v8}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    if-eqz v17, :cond_5

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v6

    move-object/from16 v3, p1

    move-object/from16 v8, v24

    invoke-virtual/range {v3 .. v8}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    :goto_5
    if-eqz v15, :cond_9

    if-eqz v14, :cond_7

    invoke-virtual {v11}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v3

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v5

    sub-double/2addr v3, v5

    cmpg-double v3, v3, v18

    if-gtz v3, :cond_6

    const/4 v3, 0x1

    :goto_6
    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget v4, v13, Landroid/graphics/PointF;->x:F

    iget v5, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v24

    iget v6, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v24

    iget v7, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    iget v8, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v9, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    move/from16 v25, v0

    add-float v9, v9, v25

    invoke-virtual/range {v3 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine3D(FFFFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    iget v8, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v9, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    move/from16 v25, v0

    add-float v9, v9, v25

    invoke-virtual/range {v3 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine3D(FFFFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    :cond_0
    :goto_7
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v3, :cond_1

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/PointF;->y:F

    move/from16 v0, v20

    int-to-float v5, v0

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3, v11}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    add-int/lit8 v3, v12, 0x1

    move-object v10, v11

    move v12, v3

    goto/16 :goto_4

    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v7, 0x0

    move v14, v7

    goto/16 :goto_1

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v11}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v6

    move-object/from16 v3, p1

    move-object/from16 v8, v24

    invoke-virtual/range {v3 .. v8}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    goto/16 :goto_5

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_7
    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v10, v3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto/16 :goto_6

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_6

    :cond_a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v24

    invoke-virtual {v3, v13, v0, v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1, v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_7

    :cond_b
    return-void

    :cond_c
    move v15, v9

    goto/16 :goto_3
.end method

.method protected drawIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->m_iconPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Paint;Z)V

    return-void
.end method
