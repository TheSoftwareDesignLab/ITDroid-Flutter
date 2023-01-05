.class final Lcom/artfulbits/aiCharts/Base/ChartEngine$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/ILayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/artfulbits/aiCharts/Base/ChartEngine;


# direct methods
.method constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine$3;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Landroid/graphics/Rect;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/artfulbits/aiCharts/Base/ILayout$IElement;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine$3;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-static {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->a(Lcom/artfulbits/aiCharts/Base/ChartEngine;)I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->isAutoLayout()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {v0, v6}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->measure(Landroid/graphics/Point;)V

    sget-object v8, Lcom/artfulbits/aiCharts/Base/ChartEngine$5;->a:[I

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->getDock()Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    move-result-object v9

    invoke-virtual {v9}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    :goto_1
    invoke-virtual {v0, v5}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->layout(Landroid/graphics/Rect;)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    iget v8, p2, Landroid/graphics/Rect;->left:I

    iget v9, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v9

    iput v8, v5, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->left:I

    iget v9, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v2

    add-int/2addr v8, v9

    iput v8, p2, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :pswitch_1
    iget v8, p2, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v9

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v2

    add-int/2addr v8, v9

    iput v8, p2, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :pswitch_2
    iget v8, p2, Landroid/graphics/Rect;->right:I

    iget v9, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    iput v8, v5, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->right:I

    iget v9, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v2

    sub-int/2addr v8, v9

    iput v8, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :pswitch_3
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    iget v9, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    iput v8, v5, Landroid/graphics/Rect;->top:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    iget v9, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v2

    sub-int/2addr v8, v9

    iput v8, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {v0, v6}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->measure(Landroid/graphics/Point;)V

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->layout(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
