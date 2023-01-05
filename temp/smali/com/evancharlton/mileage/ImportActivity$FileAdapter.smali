.class Lcom/evancharlton/mileage/ImportActivity$FileAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImportActivity.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/ImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 180
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$FileAdapter;->values:[Ljava/lang/String;

    .line 183
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$FileAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 184
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$FileAdapter;->values:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 220
    if-nez p2, :cond_0

    .line 221
    iget-object v1, p0, Lcom/evancharlton/mileage/ImportActivity$FileAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 226
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 227
    .local v0, "ctv":Landroid/widget/CheckedTextView;
    if-nez v0, :cond_1

    .line 228
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "ctv":Landroid/widget/CheckedTextView;
    check-cast v0, Landroid/widget/CheckedTextView;

    .line 229
    .restart local v0    # "ctv":Landroid/widget/CheckedTextView;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/evancharlton/mileage/ImportActivity$FileAdapter;->values:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$FileAdapter;->values:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$FileAdapter;->values:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 203
    if-nez p2, :cond_0

    .line 204
    iget-object v1, p0, Lcom/evancharlton/mileage/ImportActivity$FileAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090008

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 208
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 209
    .local v0, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 210
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 211
    .restart local v0    # "tv":Landroid/widget/TextView;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/evancharlton/mileage/ImportActivity$FileAdapter;->values:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    return-object p2
.end method

.method public setData([Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$FileAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Altering data off UI thread!"

    invoke-static {v0, v1}, Lcom/evancharlton/mileage/util/Debugger;->ensureOnUiThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 238
    iput-object p1, p0, Lcom/evancharlton/mileage/ImportActivity$FileAdapter;->values:[Ljava/lang/String;

    .line 239
    invoke-virtual {p0}, Lcom/evancharlton/mileage/ImportActivity$FileAdapter;->notifyDataSetChanged()V

    .line 240
    return-void
.end method
