.class public Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;
.super Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;-><init>()V

    return-void
.end method

.method private a(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Ljava/util/List;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;",
            "Ljava/util/List",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    const-wide/16 v5, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v2

    iget v14, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    new-array v15, v13, [Lcom/artfulbits/aiCharts/Types/ChartPieType$a;

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-wide v11, v5

    move v5, v2

    :goto_0
    if-ge v5, v13, :cond_2

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v2, v14}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v6

    add-double/2addr v6, v11

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_1

    :cond_0
    new-instance v8, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;-><init>(Lcom/artfulbits/aiCharts/Types/ChartPieType;Lcom/artfulbits/aiCharts/Base/ChartPoint;)V

    aput-object v8, v15, v5

    sget-object v8, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType$1;->a:[I

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getHLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v2

    aget v2, v8, v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    move v2, v3

    move v3, v4

    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-wide v11, v6

    move v4, v3

    move v3, v2

    goto :goto_0

    :pswitch_0
    aget-object v2, v15, v5

    iget v2, v2, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;->b:I

    add-int/2addr v2, v4

    move/from16 v20, v3

    move v3, v2

    move/from16 v2, v20

    goto :goto_1

    :pswitch_1
    aget-object v2, v15, v5

    iget v2, v2, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;->b:I

    add-int/2addr v2, v3

    move v3, v4

    goto :goto_1

    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v5, v4, v3

    if-le v5, v2, :cond_4

    div-int/lit8 v2, v2, 0x2

    move v9, v2

    :goto_2
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    move-object/from16 v0, p3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v0, v2

    move/from16 v16, v0

    new-instance v17, Landroid/graphics/RectF;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    div-int/lit8 v3, v9, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    div-int/lit8 v3, v9, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x0

    move v10, v2

    :goto_3
    if-ge v10, v13, :cond_5

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    aget-object v3, v15, v10

    move/from16 v0, v16

    float-to-double v6, v0

    invoke-virtual {v4, v14}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v18

    mul-double v6, v6, v18

    div-double/2addr v6, v11

    double-to-float v2, v6

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getHLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v6

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getVLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v7

    sget-object v2, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType$1;->a:[I

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    :goto_4
    sget-object v2, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType$1;->a:[I

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    :goto_5
    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerSize()Landroid/graphics/Point;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/Point;)V

    :cond_3
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/RectF;->top:F

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_3

    :cond_4
    add-int v5, v4, v3

    sub-int/2addr v2, v5

    move v9, v2

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iput v2, v5, Landroid/graphics/PointF;->x:F

    goto :goto_4

    :pswitch_3
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iput v2, v5, Landroid/graphics/PointF;->x:F

    goto :goto_4

    :pswitch_4
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iput v2, v5, Landroid/graphics/PointF;->x:F

    goto :goto_4

    :pswitch_5
    sget-object v7, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iput v2, v5, Landroid/graphics/PointF;->y:F

    goto :goto_5

    :pswitch_6
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iput v2, v5, Landroid/graphics/PointF;->y:F

    goto :goto_5

    :pswitch_7
    sget-object v7, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iput v2, v5, Landroid/graphics/PointF;->y:F

    goto :goto_5

    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    div-int/lit8 v3, v9, 0x2

    sub-int/2addr v2, v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    div-int/lit8 v4, v9, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    return-object p3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 32

    const-wide/16 v7, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->PLOTS_SIZE_SCALE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->PLOTS_GAP_SCALE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->SPLIT_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v6, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->SPLIT_VALUE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

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

    sget-object v7, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->SPLIT_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_1
    sget-object v7, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Value:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    if-ne v4, v7, :cond_2

    cmpg-double v7, v26, v17

    if-ltz v7, :cond_4

    :cond_2
    sget-object v7, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Position:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    if-ne v4, v7, :cond_3

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move/from16 v0, v23

    if-ge v7, v0, :cond_4

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

    int-to-double v15, v4

    add-double/2addr v6, v15

    double-to-int v4, v6

    move-object/from16 v0, v19

    iput v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-double v6, v4

    sub-double/2addr v6, v13

    double-to-int v4, v6

    move-object/from16 v0, v20

    iput v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v4, v6, :cond_7

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    move-object/from16 v0, v20

    iput v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v20

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    :cond_7
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

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->drawPie(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Ljava/util/List;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->a(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Ljava/util/List;Landroid/graphics/Rect;)Landroid/graphics/Rect;

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

    invoke-virtual/range {v4 .. v9}, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->computePointCorners(Lcom/artfulbits/aiCharts/Base/ChartPoint;FLandroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->LINES_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v6, v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_8

    new-instance v21, Landroid/graphics/PointF;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/PointF;-><init>()V

    new-instance v22, Landroid/graphics/PointF;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/PointF;-><init>()V

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getLineWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v4, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_9

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v10

    iget v11, v8, Landroid/graphics/PointF;->x:F

    iget v12, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v13, v4

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_3
    iget v4, v9, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_a

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v10

    iget v11, v9, Landroid/graphics/PointF;->x:F

    iget v12, v9, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v13, v4

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_8
    :goto_4
    return-void

    :cond_9
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v0, v4

    move/from16 v16, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v0, v4

    move/from16 v17, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    move/from16 v18, v0

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v4

    move/from16 v19, v0

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v4

    move/from16 v20, v0

    invoke-static/range {v16 .. v22}, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->computeTangents(FFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;)I

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v10

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v11, v4

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v12, v4

    move-object/from16 v0, v21

    iget v13, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v21

    iget v14, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v0, v4

    move/from16 v16, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v0, v4

    move/from16 v17, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    move/from16 v18, v0

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v4

    move/from16 v19, v0

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v4

    move/from16 v20, v0

    invoke-static/range {v16 .. v22}, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->computeTangents(FFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;)I

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v10

    iget v4, v7, Landroid/graphics/Rect;->left:I

    int-to-float v11, v4

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v4

    move-object/from16 v0, v22

    iget v13, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v22

    iget v14, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4
.end method
