.class public final Lcom/artfulbits/aiCharts/Base/ChartLegend;
.super Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;
    }
.end annotation


# instance fields
.field private a:Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartLegendItem;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/graphics/Point;

.field private m:Landroid/text/TextPaint;

.field private n:Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;

.field private final o:Lcom/artfulbits/aiCharts/Base/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$SmartItemsAdapter;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$SmartItemsAdapter;-><init>()V

    invoke-direct {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegend;-><init>(Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;)V

    return-void
.end method

.method public constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;-><init>()V

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;->Auto:Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->a:Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->b:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    iput v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->d:I

    iput v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->e:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->h:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->i:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->k:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m:Landroid/text/TextPaint;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/h;

    invoke-direct {v0, p0}, Lcom/artfulbits/aiCharts/Base/h;-><init>(Lcom/artfulbits/aiCharts/Base/ChartLegend;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->o:Lcom/artfulbits/aiCharts/Base/p;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->n:Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->n:Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;

    invoke-virtual {v0, p0}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->a(Lcom/artfulbits/aiCharts/Base/ChartLegend;)V

    return-void
.end method

.method static synthetic a(Lcom/artfulbits/aiCharts/Base/ChartLegend;)Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->n:Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;

    return-object v0
.end method

.method private a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartLegendItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->j:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->n:Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->getLegendItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->j:Ljava/util/List;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->j:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Legend items provider cannot retrun null for legend items"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/artfulbits/aiCharts/Base/ChartLegend;Ljava/util/List;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->j:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->a()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->i:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m_bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->a(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getAdapter()Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->n:Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;

    return-object v0
.end method

.method public final getBackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getLayoutMode()Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->a:Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m:Landroid/text/TextPaint;

    return-object v0
.end method

.method protected final hitTest(II)Lcom/artfulbits/aiCharts/Base/ChartLegendItem;
    .locals 4

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->a()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final inflateAttributes(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, -0x1

    const-string v0, "name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->setName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->inflateAttributes(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/util/AttributeSet;)V

    return-void

    :cond_1
    const-string v0, "background"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4, p3, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->i:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected final invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->j:Ljava/util/List;

    return-void
.end method

.method public final layout(Landroid/graphics/Rect;)V
    .locals 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->layout(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->a()Ljava/util/List;

    move-result-object v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->a:Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;

    sget-object v3, Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;->Flow:Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m_bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    add-int v6, v3, v4

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m_bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    add-int v5, v3, v4

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m_bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    sub-int v4, v3, v4

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m_bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    sub-int/2addr v3, v9

    iget-object v9, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v9, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v9

    iget v9, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v9

    iget v9, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v9

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v9

    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v8, v6, v5, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_4

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    iget v5, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_size:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v9

    if-le v5, v4, :cond_1

    iput v6, v8, Landroid/graphics/Rect;->left:I

    iget v5, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    iget-object v10, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v10

    add-int/2addr v5, v9

    iput v5, v8, Landroid/graphics/Rect;->top:I

    :cond_1
    iget v5, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_size:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v9

    iput v5, v8, Landroid/graphics/Rect;->right:I

    iget v5, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v9

    iput v5, v8, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    invoke-virtual {v0, v8, v5, v2}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->a(Landroid/graphics/Rect;Ljava/util/ArrayList;Z)V

    iget v5, v8, Landroid/graphics/Rect;->left:I

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_size:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v9, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    add-int/2addr v0, v9

    add-int/2addr v0, v5

    iput v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    sub-int v0, v4, v6

    iget v4, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->f:I

    div-int v4, v0, v4

    sub-int v0, v3, v5

    iget v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->g:I

    div-int v3, v0, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    :goto_2
    if-ge v2, v9, :cond_4

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    iget v10, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->f:I

    rem-int v10, v2, v10

    mul-int/2addr v10, v4

    add-int/2addr v10, v6

    iput v10, v8, Landroid/graphics/Rect;->left:I

    iget v10, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->f:I

    div-int v10, v2, v10

    mul-int/2addr v10, v3

    add-int/2addr v10, v5

    iput v10, v8, Landroid/graphics/Rect;->top:I

    iget v10, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v4

    iput v10, v8, Landroid/graphics/Rect;->right:I

    iget v10, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v3

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    const/16 v10, 0x11

    iget-object v11, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget-object v12, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    iget-object v13, v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_bounds:Landroid/graphics/Rect;

    invoke-static {v10, v11, v12, v8, v13}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v10, v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_bounds:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v10, v11, v1}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->a(Landroid/graphics/Rect;Ljava/util/ArrayList;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final measure(Landroid/graphics/Point;)V
    .locals 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->a()Ljava/util/List;

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->a:Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;->Flow:Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;

    if-ne v0, v1, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Point;->set(II)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    move v4, v3

    :goto_1
    if-ge v4, v8, :cond_2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    iget-object v9, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v7, v9}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->a(Landroid/graphics/Point;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    iget v9, v7, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    iget v9, v7, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_5

    iput v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->d:I

    iput v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->e:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    move v2, v3

    :goto_2
    if-ge v3, v4, :cond_4

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_size:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iget v7, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    add-int/2addr v1, v7

    iget v7, p1, Landroid/graphics/Point;->x:I

    if-le v1, v7, :cond_3

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->d:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->d:I

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->e:I

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->e:I

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_size:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    add-int/2addr v0, v1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->d:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->d:I

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->e:I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->e:I

    :goto_4
    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->d:I

    add-int/2addr v0, v1

    iget v1, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m_measuredWidth:I

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->e:I

    add-int/2addr v0, v1

    iget v1, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m_measuredHeight:I

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m_measuredWidth:I

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m_measuredHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->a:Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;->Horizontal:Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->a:Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;->Auto:Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m_dock:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    iget-boolean v0, v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->vertical:Z

    if-nez v0, :cond_7

    :cond_6
    move v1, v2

    :goto_5
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    iput v3, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    iget v7, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v7

    iput v0, v4, Landroid/graphics/Point;->x:I

    goto :goto_6

    :cond_7
    move v1, v3

    goto :goto_5

    :cond_8
    if-eqz v1, :cond_9

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    sub-int/2addr v0, v1

    iget v1, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    add-int/2addr v1, v3

    div-int/2addr v0, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/artfulbits/aiCharts/Base/MathUtils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->f:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->g:I

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->g:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/artfulbits/aiCharts/Base/MathUtils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->g:I

    :goto_7
    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->f:I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->d:I

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->g:I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->e:I

    goto/16 :goto_4

    :cond_9
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    sub-int/2addr v0, v1

    iget v1, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->l:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->c:I

    add-int/2addr v1, v3

    div-int/2addr v0, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/artfulbits/aiCharts/Base/MathUtils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->g:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->f:I

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->f:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/artfulbits/aiCharts/Base/MathUtils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->f:I

    goto :goto_7
.end method

.method public final setAdapter(Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->n:Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->a(Lcom/artfulbits/aiCharts/Base/ChartLegend;)V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->n:Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->n:Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;

    invoke-virtual {v0, p0}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->a(Lcom/artfulbits/aiCharts/Base/ChartLegend;)V

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->invalidate()V

    return-void
.end method

.method public final setBackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->i:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->i:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->invalidateChart(Z)V

    :cond_0
    return-void
.end method

.method protected final setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m_chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m_chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->o:Lcom/artfulbits/aiCharts/Base/p;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->removeNotificationListener(Lcom/artfulbits/aiCharts/Base/p;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m_chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m_chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->o:Lcom/artfulbits/aiCharts/Base/p;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->addNotificationListener(Lcom/artfulbits/aiCharts/Base/p;)V

    :cond_1
    return-void
.end method

.method public final setLayoutMode(Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->a:Lcom/artfulbits/aiCharts/Base/ChartLegend$LayoutMode;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m_chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m_chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getLegends()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->validateName(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->b:Ljava/lang/String;

    return-void
.end method
