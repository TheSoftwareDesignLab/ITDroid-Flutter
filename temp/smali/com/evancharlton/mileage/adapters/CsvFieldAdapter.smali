.class public Lcom/evancharlton/mileage/adapters/CsvFieldAdapter;
.super Ljava/lang/Object;
.source "CsvFieldAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/adapters/CsvFieldAdapter$Holder;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/adapters/CsvFieldAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 20
    return-void
.end method

.method private getText(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PLAINTEXT:[I

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 59
    const v0, 0x7f070126

    .line 61
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PLAINTEXT:[I

    aget v0, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 24
    if-nez p2, :cond_0

    .line 25
    iget-object v1, p0, Lcom/evancharlton/mileage/adapters/CsvFieldAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 29
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/adapters/CsvFieldAdapter$Holder;

    .line 30
    .local v0, "holder":Lcom/evancharlton/mileage/adapters/CsvFieldAdapter$Holder;
    if-nez v0, :cond_1

    .line 31
    new-instance v0, Lcom/evancharlton/mileage/adapters/CsvFieldAdapter$Holder;

    .end local v0    # "holder":Lcom/evancharlton/mileage/adapters/CsvFieldAdapter$Holder;
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/adapters/CsvFieldAdapter$Holder;-><init>(Landroid/widget/TextView;)V

    .line 32
    .restart local v0    # "holder":Lcom/evancharlton/mileage/adapters/CsvFieldAdapter$Holder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    :cond_1
    iget-object v1, v0, Lcom/evancharlton/mileage/adapters/CsvFieldAdapter$Holder;->text:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/adapters/CsvFieldAdapter;->getText(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 36
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 47
    const-string v0, "skip"

    .line 49
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/adapters/CsvFieldAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    if-nez p2, :cond_0

    .line 72
    iget-object v1, p0, Lcom/evancharlton/mileage/adapters/CsvFieldAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090008

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 75
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    .local v0, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 77
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 78
    .restart local v0    # "tv":Landroid/widget/TextView;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    :cond_1
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/adapters/CsvFieldAdapter;->getText(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 104
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 110
    return-void
.end method
