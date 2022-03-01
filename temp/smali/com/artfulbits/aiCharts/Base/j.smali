.class final Lcom/artfulbits/aiCharts/Base/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/j$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/artfulbits/aiCharts/Base/j$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/j;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/j;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final a(FFLjava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [F

    aput p1, v3, v2

    aput p2, v3, v7

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/j$a;

    aput p1, v3, v2

    aput p2, v3, v7

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/j$a;->b:Landroid/graphics/Matrix;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/j$a;->b:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_0
    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/j$a;->a:Landroid/graphics/Region;

    aget v5, v3, v2

    float-to-int v5, v5

    aget v6, v3, v7

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/j$a;->c:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/j;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    cmpl-float v0, p1, v8

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/j;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    cmpl-float v0, p2, v8

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/j;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/j;->c:Landroid/graphics/Bitmap;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v1, -0x1000000

    xor-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final a(Landroid/graphics/Region;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/artfulbits/aiCharts/Base/j$a;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/j$a;-><init>()V

    iput-object p1, v0, Lcom/artfulbits/aiCharts/Base/j$a;->a:Landroid/graphics/Region;

    iput-object p2, v0, Lcom/artfulbits/aiCharts/Base/j$a;->c:Ljava/lang/Object;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
