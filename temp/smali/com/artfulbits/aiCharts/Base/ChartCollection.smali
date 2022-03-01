.class public Lcom/artfulbits/aiCharts/Base/ChartCollection;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7c10e0dcdfd3c507L


# instance fields
.field private transient a:Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartCollection;->a:Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->validate(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->onChanged(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->validate(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->size()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->onChanged(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->validate(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartCollection;->a:Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;

    const/4 v4, 0x0

    add-int/lit8 v0, p1, 0x1

    invoke-interface {v3, v2, v4, p1}, Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;->onChanged(Ljava/lang/Object;Ljava/lang/Object;I)V

    move p1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public clear()V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    array-length v4, v0

    move v2, v1

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    const/4 v6, 0x0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v6, v5, v2}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->onChanged(Ljava/lang/Object;Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onChanged(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartCollection;->a:Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartCollection;->a:Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;->onChanged(Ljava/lang/Object;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->onChanged(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->onChanged(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v4, v3, v0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->onChanged(Ljava/lang/Object;Ljava/lang/Object;I)V

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->validate(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->onChanged(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method

.method protected validate(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    return-void
.end method
