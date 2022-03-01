.class Lcom/artfulbits/aiCharts/Base/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/artfulbits/aiCharts/Base/ChartArea;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartArea;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/a;->a:Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)I
    .locals 2

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    return v0
.end method

.method public static a(Landroid/graphics/Rect;FFILandroid/graphics/RectF;)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    and-int/lit8 v0, p3, 0xf

    packed-switch v0, :pswitch_data_0

    :goto_0
    shr-int/lit8 v0, p3, 0x4

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_1

    :goto_1
    return-void

    :pswitch_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p4, Landroid/graphics/RectF;->left:F

    iget v0, p4, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p4, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    div-float v1, p1, v2

    sub-float v1, v0, v1

    iput v1, p4, Landroid/graphics/RectF;->left:F

    div-float v1, p1, v2

    add-float/2addr v0, v1

    iput v0, p4, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :pswitch_2
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p4, Landroid/graphics/RectF;->right:F

    iget v0, p4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    iput v0, p4, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :pswitch_3
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p4, Landroid/graphics/RectF;->top:F

    iget v0, p4, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p4, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    div-float v1, p2, v2

    sub-float v1, v0, v1

    iput v1, p4, Landroid/graphics/RectF;->top:F

    div-float v1, p2, v2

    add-float/2addr v0, v1

    iput v0, p4, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :pswitch_5
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p4, Landroid/graphics/RectF;->bottom:F

    iget v0, p4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p2

    iput v0, p4, Landroid/graphics/RectF;->top:F

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Landroid/graphics/RectF;FFLcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/RectF;)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    sget-object v0, Lcom/artfulbits/aiCharts/Base/q;->a:[I

    invoke-virtual {p3}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    sget-object v0, Lcom/artfulbits/aiCharts/Base/q;->a:[I

    invoke-virtual {p4}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :goto_1
    return-void

    :pswitch_0
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iput v0, p5, Landroid/graphics/RectF;->left:F

    iget v0, p5, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p5, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    div-float v1, p1, v2

    sub-float v1, v0, v1

    iput v1, p5, Landroid/graphics/RectF;->left:F

    div-float v1, p1, v2

    add-float/2addr v0, v1

    iput v0, p5, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :pswitch_2
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iput v0, p5, Landroid/graphics/RectF;->right:F

    iget v0, p5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    iput v0, p5, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :pswitch_3
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iput v0, p5, Landroid/graphics/RectF;->top:F

    iget v0, p5, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p5, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    div-float v1, p2, v2

    sub-float v1, v0, v1

    iput v1, p5, Landroid/graphics/RectF;->top:F

    div-float v1, p2, v2

    add-float/2addr v0, v1

    iput v0, p5, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :pswitch_5
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iput v0, p5, Landroid/graphics/RectF;->bottom:F

    iget v0, p5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p2

    iput v0, p5, Landroid/graphics/RectF;->top:F

    goto :goto_1

    nop

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
.method public final a(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/a;->a:Lcom/artfulbits/aiCharts/Base/ChartArea;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method
