.class public Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;
.super Landroid/widget/BaseAdapter;
.source "VehicleStatisticsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$ViewHolder;,
        Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VehicleStatisticsAdapter"

.field private static final TYPE_GROUP:I = 0x1

.field private static final TYPE_STATISTIC:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;[Lcom/evancharlton/mileage/provider/StatisticsGroup;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p3, "groups"    # [Lcom/evancharlton/mileage/provider/StatisticsGroup;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mObjects:Ljava/util/ArrayList;

    .line 34
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mValues:Ljava/util/HashMap;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    iput-object p1, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    .line 47
    move-object v0, p3

    .local v0, "arr$":[Lcom/evancharlton/mileage/provider/StatisticsGroup;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 48
    .local v1, "group":Lcom/evancharlton/mileage/provider/StatisticsGroup;
    iget-object v6, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mObjects:Ljava/util/ArrayList;

    new-instance v7, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;

    invoke-direct {v7, p1, v1}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;-><init>(Landroid/content/Context;Lcom/evancharlton/mileage/provider/StatisticsGroup;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v1}, Lcom/evancharlton/mileage/provider/StatisticsGroup;->getStatistics()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evancharlton/mileage/provider/Statistic;

    .line 50
    .local v5, "statistic":Lcom/evancharlton/mileage/provider/Statistic;
    iget-object v6, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mObjects:Ljava/util/ArrayList;

    new-instance v7, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;

    invoke-direct {v7, p1, v5, p2}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;-><init>(Landroid/content/Context;Lcom/evancharlton/mileage/provider/Statistic;Lcom/evancharlton/mileage/dao/Vehicle;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 47
    .end local v5    # "statistic":Lcom/evancharlton/mileage/provider/Statistic;
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 53
    .end local v1    # "group":Lcom/evancharlton/mileage/provider/StatisticsGroup;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Lcom/evancharlton/mileage/dao/Vehicle;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mObjects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mValues:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 119
    const/4 v4, -0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 120
    const-string v4, "key"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 121
    .local v1, "key_position":I
    const-string v4, "value"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 122
    .local v3, "value_position":I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mValues:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->notifyDataSetChanged()V

    .line 129
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;

    invoke-direct {v0, p0}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;-><init>(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)V

    invoke-virtual {v0}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;->start()V

    .line 115
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 143
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;

    iget v0, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->type:I

    return v0
.end method

.method public getNumHeadersAbove(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "total":I
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 66
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 65
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 70
    :cond_1
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 148
    iget-object v2, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;

    .line 150
    .local v0, "holder":Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;
    if-nez p2, :cond_0

    .line 151
    iget v2, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->type:I

    packed-switch v2, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$ViewHolder;

    .line 162
    .local v1, "viewHolder":Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$ViewHolder;
    if-nez v1, :cond_1

    .line 163
    new-instance v1, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$ViewHolder;

    .end local v1    # "viewHolder":Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$ViewHolder;
    invoke-direct {v1, p2}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 166
    .restart local v1    # "viewHolder":Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$ViewHolder;
    :cond_1
    iget v2, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->type:I

    packed-switch v2, :pswitch_data_1

    .line 176
    :goto_1
    return-object p2

    .line 153
    .end local v1    # "viewHolder":Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$ViewHolder;
    :pswitch_0
    iget-object v2, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03001d

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 154
    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v2, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030004

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 168
    .restart local v1    # "viewHolder":Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$ViewHolder;
    :pswitch_2
    iget-object v2, v1, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v3, v1, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$ViewHolder;->value:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mValues:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 172
    :pswitch_3
    iget-object v2, v1, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 166
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Lcom/evancharlton/mileage/provider/Statistic;D)V
    .locals 2
    .param p1, "statistic"    # Lcom/evancharlton/mileage/provider/Statistic;
    .param p2, "value"    # D

    .prologue
    .line 56
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/evancharlton/mileage/provider/Statistic;->format(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->setValue(Lcom/evancharlton/mileage/provider/Statistic;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public setValue(Lcom/evancharlton/mileage/provider/Statistic;Ljava/lang/String;)V
    .locals 2
    .param p1, "statistic"    # Lcom/evancharlton/mileage/provider/Statistic;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->mValues:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/evancharlton/mileage/provider/Statistic;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method
