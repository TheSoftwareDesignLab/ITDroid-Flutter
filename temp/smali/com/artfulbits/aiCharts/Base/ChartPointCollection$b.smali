.class final Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/IItemBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartPointCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/artfulbits/aiCharts/Base/IItemBinder",
        "<",
        "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:[I


# direct methods
.method public constructor <init>(I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->a:I

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->b:[I

    return-void
.end method


# virtual methods
.method public final synthetic bind(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Landroid/database/Cursor;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    int-to-double v1, v0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->b:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-array v3, v0, [D

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->a:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->a:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    :goto_1
    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->b:[I

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->b:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->b:[I

    aget v4, v4, v2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->b:[I

    array-length v0, v0

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-direct {v2, v0, v1, v3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;-><init>(D[D)V

    move-object v0, v2

    :goto_3
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    move-wide v0, v1

    goto :goto_1
.end method
