.class public Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;
.super Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation$1;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/String;

.field private c:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field private d:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field private e:Landroid/text/TextPaint;

.field private f:Landroid/graphics/Paint;

.field private g:Z

.field private h:Z

.field private final i:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v4, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v5, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->c:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->d:Lcom/artfulbits/aiCharts/Enums/Alignment;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->f:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->g:Z

    iput-boolean v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->h:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->m_description:Ljava/lang/String;

    iput-object p4, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->c:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object p5, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->d:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->f:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;IIILandroid/graphics/Rect;)V
    .locals 4

    div-int/lit8 v0, p3, 0x2

    div-int/lit8 v1, p4, 0x2

    sget-object v2, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation$1;->a:[I

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    sget-object v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation$1;->a:[I

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    :goto_1
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p3

    iput v0, p6, Landroid/graphics/Rect;->right:I

    return-void

    :pswitch_0
    iget v0, p0, Landroid/graphics/PointF;->x:F

    int-to-float v2, p3

    sub-float/2addr v0, v2

    int-to-float v2, p5

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p6, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :pswitch_1
    iget v2, p0, Landroid/graphics/PointF;->x:F

    int-to-float v0, v0

    sub-float v0, v2, v0

    float-to-int v0, v0

    iput v0, p6, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Landroid/graphics/PointF;->x:F

    int-to-float v2, p5

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p6, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Landroid/graphics/PointF;->y:F

    int-to-float v1, p4

    sub-float/2addr v0, v1

    int-to-float v1, p5

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p6, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :pswitch_4
    iget v0, p0, Landroid/graphics/PointF;->y:F

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p6, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :pswitch_5
    iget v0, p0, Landroid/graphics/PointF;->y:F

    int-to-float v1, p5

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p6, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/artfulbits/aiCharts/Base/ChartEngine;)V
    .locals 12

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->getPosition()Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    invoke-virtual {v0, p2, v1}, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;->getPin(Lcom/artfulbits/aiCharts/Base/ChartEngine;Landroid/graphics/PointF;)V

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget v5, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->m_offset:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v8, v0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v7, v0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v8

    iget v1, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v0, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v7

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->c:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->d:Lcom/artfulbits/aiCharts/Enums/Alignment;

    invoke-static/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a(Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;IIILandroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v9, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_6

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->d:Lcom/artfulbits/aiCharts/Enums/Alignment;

    invoke-static/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a(Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;IIILandroid/graphics/Rect;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    int-to-float v1, v11

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    iget v0, v6, Landroid/graphics/Rect;->top:I

    iget v1, v9, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->c:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v2, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    invoke-static/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a(Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;IIILandroid/graphics/Rect;)V

    :cond_1
    :goto_2
    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->g:Z

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v4, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    :cond_2
    :goto_3
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v1, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iget v1, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, v6, Landroid/graphics/Rect;->top:I

    iget v2, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->b:Ljava/lang/String;

    div-int/lit8 v3, v8, 0x2

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-int/lit8 v3, v7, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    iget v1, v9, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->d:Lcom/artfulbits/aiCharts/Enums/Alignment;

    invoke-static/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a(Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;IIILandroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    int-to-float v1, v11

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->c:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v2, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    invoke-static/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a(Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;IIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :cond_8
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    goto/16 :goto_3

    :cond_9
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    goto/16 :goto_4

    :cond_a
    move v4, v7

    move v3, v8

    goto/16 :goto_0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getConnectorPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->f:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDrawConnector()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->g:Z

    return v0
.end method

.method public getHorizontalAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->c:Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-object v0
.end method

.method public getSmartPositioning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->h:Z

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    return v0
.end method

.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getVerticalAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->d:Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-object v0
.end method

.method public setAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->setHorizontalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V

    invoke-virtual {p0, p2}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->setVerticalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setDrawConnector(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->g:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->g:Z

    :cond_0
    return-void
.end method

.method public setHorizontalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->c:Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-void
.end method

.method public setSmartPositioning(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->h:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->h:Z

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->b:Ljava/lang/String;

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setVerticalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->d:Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-void
.end method
