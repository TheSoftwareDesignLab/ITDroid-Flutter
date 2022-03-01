.class final Lcom/artfulbits/aiCharts/Base/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/l$a;,
        Lcom/artfulbits/aiCharts/Base/l$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/artfulbits/aiCharts/Base/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/artfulbits/aiCharts/Base/l$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/l;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/l;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/l;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/l;->d:Z

    return-void
.end method

.method private a(Ljava/lang/Object;Z)Lcom/artfulbits/aiCharts/Base/l$a;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/l$a;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/l$a;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez p2, :cond_2

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/l$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Ljava/lang/Object;Z)Lcom/artfulbits/aiCharts/Base/l$b;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/l$b;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/l$b;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez p2, :cond_2

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/l$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(Lcom/artfulbits/aiCharts/Base/ChartSeries;)I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/artfulbits/aiCharts/Base/l;->b(Ljava/lang/Object;Z)Lcom/artfulbits/aiCharts/Base/l$b;

    move-result-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isSideBySide()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/l;->d:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v2}, Lcom/artfulbits/aiCharts/Base/l;->a(Ljava/lang/Object;Z)Lcom/artfulbits/aiCharts/Base/l$a;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartSeries;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/artfulbits/aiCharts/Base/l;->b(Ljava/lang/Object;Z)Lcom/artfulbits/aiCharts/Base/l$b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/l$b;->a:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartSeries;",
            ">;Z)V"
        }
    .end annotation

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean p2, p0, Lcom/artfulbits/aiCharts/Base/l;->d:Z

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartType;->isStacked()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v0, v6}, Lcom/artfulbits/aiCharts/Base/l;->b(Ljava/lang/Object;Z)Lcom/artfulbits/aiCharts/Base/l$b;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/artfulbits/aiCharts/Base/l$b;

    invoke-direct {v4, v0}, Lcom/artfulbits/aiCharts/Base/l$b;-><init>(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartType;->isSideBySide()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0, v0, v6}, Lcom/artfulbits/aiCharts/Base/l;->a(Ljava/lang/Object;Z)Lcom/artfulbits/aiCharts/Base/l$a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/artfulbits/aiCharts/Base/l$a;

    invoke-direct {v0, v4}, Lcom/artfulbits/aiCharts/Base/l$a;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/l$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v3, v4, Lcom/artfulbits/aiCharts/Base/l$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartType;->isSideBySide()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p2, :cond_5

    invoke-direct {p0, v0, v6}, Lcom/artfulbits/aiCharts/Base/l;->a(Ljava/lang/Object;Z)Lcom/artfulbits/aiCharts/Base/l$a;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v3, Lcom/artfulbits/aiCharts/Base/l$a;

    invoke-direct {v3, v0}, Lcom/artfulbits/aiCharts/Base/l$a;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v3, v3, Lcom/artfulbits/aiCharts/Base/l$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final b(Lcom/artfulbits/aiCharts/Base/ChartSeries;)I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isStacked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/artfulbits/aiCharts/Base/l;->b(Ljava/lang/Object;Z)Lcom/artfulbits/aiCharts/Base/l$b;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/artfulbits/aiCharts/Base/l;->a(Ljava/lang/Object;Z)Lcom/artfulbits/aiCharts/Base/l$a;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/l$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final c(Lcom/artfulbits/aiCharts/Base/ChartSeries;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartType;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/artfulbits/aiCharts/Base/l;->b(Ljava/lang/Object;Z)Lcom/artfulbits/aiCharts/Base/l$b;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/artfulbits/aiCharts/Base/l;->a(Ljava/lang/Object;Z)Lcom/artfulbits/aiCharts/Base/l$a;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v0, v1, Lcom/artfulbits/aiCharts/Base/l$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method
