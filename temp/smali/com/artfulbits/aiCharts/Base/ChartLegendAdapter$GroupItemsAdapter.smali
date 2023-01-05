.class public final Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$GroupItemsAdapter;
.super Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupItemsAdapter"
.end annotation


# instance fields
.field private final a:[Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;


# direct methods
.method public varargs constructor <init>([Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;-><init>(Lcom/artfulbits/aiCharts/Base/IItemBinder;)V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$GroupItemsAdapter;->a:[Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;

    return-void
.end method


# virtual methods
.method final a(Lcom/artfulbits/aiCharts/Base/ChartLegend;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->a(Lcom/artfulbits/aiCharts/Base/ChartLegend;)V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$GroupItemsAdapter;->a:[Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->a(Lcom/artfulbits/aiCharts/Base/ChartLegend;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getLegendItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartLegendItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$GroupItemsAdapter;->m_legendItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$GroupItemsAdapter;->a:[Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$GroupItemsAdapter;->m_legendItems:Ljava/util/Vector;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->getLegendItems()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$GroupItemsAdapter;->m_legendItems:Ljava/util/Vector;

    return-object v0
.end method
