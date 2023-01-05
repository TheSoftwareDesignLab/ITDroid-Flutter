.class public final Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;
.super Ljava/lang/Object;


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/Paint;

.field private g:Ljava/lang/String;

.field private h:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field private i:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field private j:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    const/16 v2, 0xff

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->a:D

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->b:D

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->c:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->d:D

    iput-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->e:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->f:Landroid/graphics/Paint;

    iput-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->g:Ljava/lang/String;

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->h:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->i:Lcom/artfulbits/aiCharts/Enums/Alignment;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->j:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->f:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;-><init>()V

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->c:D

    iput-wide p3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->d:D

    return-void
.end method


# virtual methods
.method protected final draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 23

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/RectF;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getPosition()Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    move-result-object v3

    iget-boolean v0, v3, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsVertical:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    move v8, v3

    :goto_0
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->a:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v3

    :goto_1
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->b:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v5

    move-wide v9, v5

    :goto_2
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->c:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_5

    sub-double v5, v9, v3

    move-wide v13, v5

    :goto_3
    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->j:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->g:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->g:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v0, v16

    invoke-virtual {v5, v6, v7, v11, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    :cond_0
    move-wide v11, v3

    :goto_4
    cmpg-double v3, v11, v9

    if-gez v3, :cond_a

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide v3

    add-double v5, v11, v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide v5

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    if-eqz v18, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isInverted()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-double v0, v7

    move-wide/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v21, v0

    mul-double v3, v3, v21

    add-double v3, v3, v19

    double-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-double v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v19, v0

    mul-double v5, v5, v19

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->e:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->f:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_6
    if-eqz v8, :cond_1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->h:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->i:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-object v7, v2

    invoke-static/range {v2 .. v7}, Lcom/artfulbits/aiCharts/Base/a;->a(Landroid/graphics/RectF;FFLcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/RectF;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->g:Ljava/lang/String;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->j:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->d:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->d:D

    add-double/2addr v3, v11

    move-wide v11, v3

    goto/16 :goto_4

    :cond_2
    const/4 v3, 0x0

    move v8, v3

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->a:D

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->b:D

    move-wide v9, v5

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->c:D

    move-wide v13, v5

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    int-to-double v0, v7

    move-wide/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v21, v0

    mul-double v3, v3, v21

    sub-double v3, v19, v3

    double-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-double v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v19, v0

    mul-double v5, v5, v19

    sub-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_5

    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isInverted()Z

    move-result v7

    if-eqz v7, :cond_8

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-double v0, v7

    move-wide/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v21, v0

    mul-double v3, v3, v21

    sub-double v3, v19, v3

    double-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-double v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v19, v0

    mul-double v5, v5, v19

    sub-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_5

    :cond_8
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-double v0, v7

    move-wide/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v21, v0

    mul-double v3, v3, v21

    add-double v3, v3, v19

    double-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-double v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v19, v0

    mul-double v5, v5, v19

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v2, v15}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->e:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v15}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v15, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v15, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v15, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_6

    :cond_a
    return-void
.end method

.method public final getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getColor()I
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public final getEnd()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->b:D

    return-wide v0
.end method

.method public final getHorizontalAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->h:Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-object v0
.end method

.method public final getPeriod()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->d:D

    return-wide v0
.end method

.method public final getStart()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->a:D

    return-wide v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->j:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getVerticalAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->i:Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-object v0
.end method

.method public final getWidth()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->c:D

    return-wide v0
.end method

.method public final setAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->setHorizontalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V

    invoke-virtual {p0, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->setVerticalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V

    return-void
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final setEnd(D)V
    .locals 0

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->b:D

    return-void
.end method

.method public final setHorizontalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->h:Lcom/artfulbits/aiCharts/Enums/Alignment;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->h:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :cond_0
    return-void
.end method

.method public final setPeriod(D)V
    .locals 0

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->d:D

    return-void
.end method

.method public final setStart(D)V
    .locals 0

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->a:D

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->g:Ljava/lang/String;

    return-void
.end method

.method public final setVerticalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->i:Lcom/artfulbits/aiCharts/Enums/Alignment;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->i:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :cond_0
    return-void
.end method

.method public final setWidth(D)V
    .locals 0

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->c:D

    return-void
.end method
