.class public Lcom/evancharlton/mileage/adapters/DateFormatAdapter;
.super Landroid/widget/BaseAdapter;
.source "DateFormatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/adapters/DateFormatAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final FORMATS:[Ljava/lang/String;

.field private static final FORMAT_STRINGS:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "YYYY-MM-DD HH:MM:SS"

    aput-object v1, v0, v3

    const-string v1, "YYYY-MM-DD HH:MM"

    aput-object v1, v0, v4

    const-string v1, "YYYY-MM-DD"

    aput-object v1, v0, v5

    const-string v1, "YYYY/MM/DD HH:MM:SS"

    aput-object v1, v0, v6

    const-string v1, "YYYY/MM/DD HH:MM"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "YYYY/MM/DD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MM-DD-YYYY HH:MM:SS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MM-DD-YYYY HH:MM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "MM-DD-YYYY"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MM/DD/YYYY HH:MM:SS"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MM/DD/YYYY HH:MM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "MM/DD/YYYY"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "DD-MM-YYYY HH:MM:SS"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "DD-MM-YYYY HH:MM"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "DD-MM-YYYY"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "DD/MM/YYYY HH:MM:SS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DD/MM/YYYY HH:MM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "DD/MM/YYYY"

    aput-object v2, v0, v1

    sput-object v0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->FORMATS:[Ljava/lang/String;

    .line 33
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    aput-object v1, v0, v3

    const-string v1, "yyyy-MM-dd HH:mm"

    aput-object v1, v0, v4

    const-string v1, "yyyy-MM-dd"

    aput-object v1, v0, v5

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    aput-object v1, v0, v6

    const-string v1, "yyyy/MM/dd HH:mm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "yyyy/MM/dd"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MM-dd-yyyy HH:mm:ss"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MM-dd-yyyy HH:mm"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "MM-dd-yyyy"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MM/dd/yyyy HH:mm:ss"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MM/dd/yyyy HH:mm"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "MM/dd/yyyy"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dd-MM-yyyy HH:mm:ss"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dd-MM-yyyy HH:mm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dd-MM-yyyy"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dd/MM/yyyy HH:mm:ss"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "dd/MM/yyyy HH:mm"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "dd/MM/yyyy"

    aput-object v2, v0, v1

    sput-object v0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->FORMAT_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private getView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "resource"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 86
    if-nez p3, :cond_0

    .line 87
    iget-object v1, p0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 90
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter$ViewHolder;

    .line 91
    .local v0, "holder":Lcom/evancharlton/mileage/adapters/DateFormatAdapter$ViewHolder;
    if-nez v0, :cond_1

    .line 92
    new-instance v0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/evancharlton/mileage/adapters/DateFormatAdapter$ViewHolder;
    invoke-direct {v0, p3}, Lcom/evancharlton/mileage/adapters/DateFormatAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 95
    .restart local v0    # "holder":Lcom/evancharlton/mileage/adapters/DateFormatAdapter$ViewHolder;
    :cond_1
    iget-object v1, v0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    sget-object v2, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->FORMATS:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-object p3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->FORMATS:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 82
    const v0, 0x1090009

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->getView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 67
    sget-object v0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->FORMAT_STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 72
    sget-object v0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->FORMAT_STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    const v0, 0x1090008

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->getView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
