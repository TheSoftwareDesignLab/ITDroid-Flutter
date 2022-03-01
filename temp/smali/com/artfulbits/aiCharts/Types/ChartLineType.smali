.class public Lcom/artfulbits/aiCharts/Types/ChartLineType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;
    }
.end annotation


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

.field public static final SORTED_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
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
    .locals 5

    const-string v0, "line-break_mode"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartLineType;

    const-class v2, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->None:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "line-break_delta"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartLineType;

    const-class v2, Ljava/lang/Double;

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_DELTA:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "line-break_point"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartLineType;

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "points-hit_radius"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartLineType;

    const-class v2, Ljava/lang/Integer;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "line-sorted_points"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartLineType;

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->SORTED_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->FLAG_SUPPORT_3D:I

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 30

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v3

    iget v0, v3, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    move/from16 v23, v0

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartLineType;->SORTED_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v6, v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v3

    :goto_0
    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v6, v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->None:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    if-eq v4, v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    sget-object v8, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->Auto:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    if-ne v4, v8, :cond_4

    const/4 v4, 0x1

    move/from16 v19, v4

    :goto_2
    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_DELTA:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v6, v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartLineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v6, v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Types/ChartLineType;->isStacked()Z

    move-result v27

    new-instance v28, Landroid/graphics/Path;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Path;-><init>()V

    if-eqz v19, :cond_e

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    :goto_3
    move/from16 v20, v4

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    const/4 v8, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v9, v4, -0x1

    if-eqz v7, :cond_d

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

    invoke-static/range {v3 .. v9}, Lcom/artfulbits/aiCharts/Types/ChartLineType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v8

    invoke-static/range {v3 .. v9}, Lcom/artfulbits/aiCharts/Types/ChartLineType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v9

    move/from16 v21, v9

    :goto_5
    const/16 v17, 0x0

    new-instance v29, Landroid/graphics/PointF;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/PointF;-><init>()V

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    move/from16 v22, v8

    :goto_6
    move/from16 v0, v22

    move/from16 v1, v21

    if-gt v0, v1, :cond_c

    move/from16 v0, v22

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    if-eqz v27, :cond_6

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ)D

    move-result-wide v7

    :goto_7
    invoke-virtual/range {v18 .. v18}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v5

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    if-eqz v17, :cond_0

    if-eqz v20, :cond_a

    if-eqz v19, :cond_8

    invoke-virtual/range {v18 .. v18}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    invoke-virtual/range {v17 .. v17}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    cmpg-double v4, v4, v24

    if-gtz v4, :cond_7

    const/4 v4, 0x1

    :goto_8
    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v4, :cond_b

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v29

    iget v11, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v29

    iget v12, v0, Landroid/graphics/PointF;->y:F

    iget v13, v9, Landroid/graphics/PointF;->x:F

    iget v14, v9, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    iget v15, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float v16, v4, v5

    invoke-virtual/range {v10 .. v17}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine3D(FFFFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    :cond_0
    :goto_9
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v4, :cond_1

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Path;->reset()V

    iget v4, v9, Landroid/graphics/PointF;->x:F

    iget v5, v9, Landroid/graphics/PointF;->y:F

    move/from16 v0, v26

    int-to-float v6, v0

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v4, v2}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    add-int/lit8 v8, v22, 0x1

    move-object/from16 v17, v18

    move/from16 v22, v8

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v3

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x0

    move/from16 v19, v4

    goto/16 :goto_2

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v7

    goto/16 :goto_7

    :cond_7
    const/4 v4, 0x0

    goto :goto_8

    :cond_8
    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    goto/16 :goto_8

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_8

    :cond_a
    const/4 v4, 0x1

    goto/16 :goto_8

    :cond_b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v9, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_9

    :cond_c
    return-void

    :cond_d
    move/from16 v21, v9

    goto/16 :goto_5

    :cond_e
    move/from16 v20, v5

    goto/16 :goto_4
.end method

.method protected drawIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->m_iconPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/artfulbits/aiCharts/Types/ChartLineType;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Paint;Z)V

    return-void
.end method
