.class public Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/IItemBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/artfulbits/aiCharts/Base/IItemBinder",
        "<",
        "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final AXIS_LABEL_VALUE:I = 0x3

.field public static final LABEL_VALUE:I = 0x2

.field public static final X_VALUE:I = 0x0

.field public static final Y_VALUE:I = 0x1


# instance fields
.field private a:[I

.field private b:[I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    array-length v2, p3

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "columns and fields array should be the same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p3, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->a:[I

    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->b:[I

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->b:[I

    aget-object v3, p2, v0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    array-length v0, p3

    if-ge v1, v0, :cond_3

    aget v0, p3, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->c:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->c:I

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fields should contains at least one Y_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;Lcom/artfulbits/aiCharts/Base/ChartPoint;)Lcom/artfulbits/aiCharts/Base/ChartPoint;
    .locals 12

    const/4 v1, 0x0

    const/4 v0, 0x0

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    int-to-double v4, v2

    iget v2, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->c:I

    new-array v7, v2, [D

    move v6, v0

    move v2, v0

    move-object v0, v1

    :goto_0
    iget-object v3, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->a:[I

    array-length v3, v3

    if-ge v6, v3, :cond_0

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->a:[I

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    move-wide v3, v4

    :goto_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-wide v10, v3

    move-wide v4, v10

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->b:[I

    aget v3, v3, v6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    goto :goto_1

    :pswitch_1
    add-int/lit8 v3, v2, 0x1

    iget-object v8, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->b:[I

    aget v8, v8, v6

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    aput-wide v8, v7, v2

    move v2, v3

    move-wide v10, v4

    move-wide v3, v10

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->b:[I

    aget v0, v0, v6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-wide v3, v4

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->b:[I

    aget v1, v1, v6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-wide v3, v4

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-direct {p2, v4, v5, v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;-><init>(D[D)V

    :goto_2
    invoke-virtual {p2, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setAxisLabel(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setLabel(Ljava/lang/String;)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->reset()V

    invoke-virtual {p2, v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setX(D)V

    invoke-virtual {p2, v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setY([D)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic bind(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {p0, p1, p2}, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->bind(Ljava/lang/Object;Lcom/artfulbits/aiCharts/Base/ChartPoint;)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v0

    return-object v0
.end method
