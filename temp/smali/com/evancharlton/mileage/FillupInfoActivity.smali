.class public Lcom/evancharlton/mileage/FillupInfoActivity;
.super Landroid/app/Activity;
.source "FillupInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;,
        Lcom/evancharlton/mileage/FillupInfoActivity$PartialStatistic;,
        Lcom/evancharlton/mileage/FillupInfoActivity$Holder;
    }
.end annotation


# static fields
.field private static final GROUPS:[Lcom/evancharlton/mileage/provider/StatisticsGroup;

.field private static final INFO:[Lcom/evancharlton/mileage/provider/Statistic;

.field private static final STATS:[Lcom/evancharlton/mileage/provider/Statistic;

.field private static final TAG:Ljava/lang/String; = "FillupInfoActivity"


# instance fields
.field private mFillup:Lcom/evancharlton/mileage/dao/Fillup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfoTask:Lcom/evancharlton/mileage/tasks/FillupInfoTask;

.field private final mLayouts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/evancharlton/mileage/FillupInfoActivity$Holder;",
            ">;"
        }
    .end annotation
.end field

.field private mStatContainer:Landroid/widget/LinearLayout;

.field private mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/evancharlton/mileage/provider/Statistic;

    new-instance v1, Lcom/evancharlton/mileage/FillupInfoActivity$PartialStatistic;

    const v2, 0x7f070123

    invoke-direct {v1, v2}, Lcom/evancharlton/mileage/FillupInfoActivity$PartialStatistic;-><init>(I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/evancharlton/mileage/provider/Statistics$FuelStatistic;

    const v2, 0x7f07011c

    invoke-direct {v1, v2}, Lcom/evancharlton/mileage/provider/Statistics$FuelStatistic;-><init>(I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/evancharlton/mileage/provider/Statistics$DistanceStatistic;

    const v2, 0x7f07011d

    invoke-direct {v1, v2}, Lcom/evancharlton/mileage/provider/Statistics$DistanceStatistic;-><init>(I)V

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-instance v2, Lcom/evancharlton/mileage/provider/Statistics$PriceStatistic;

    const v3, 0x7f07011b

    invoke-direct {v2, v3}, Lcom/evancharlton/mileage/provider/Statistics$PriceStatistic;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;

    const v3, 0x7f07011a

    invoke-direct {v2, v3}, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;-><init>(I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/evancharlton/mileage/FillupInfoActivity;->INFO:[Lcom/evancharlton/mileage/provider/Statistic;

    .line 46
    new-array v0, v6, [Lcom/evancharlton/mileage/provider/Statistic;

    new-instance v1, Lcom/evancharlton/mileage/provider/Statistics$DistanceStatistic;

    const v2, 0x7f0700a2

    invoke-direct {v1, v2}, Lcom/evancharlton/mileage/provider/Statistics$DistanceStatistic;-><init>(I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/evancharlton/mileage/provider/Statistics$EconomyStatistic;

    const v2, 0x7f0700a3

    invoke-direct {v1, v2}, Lcom/evancharlton/mileage/provider/Statistics$EconomyStatistic;-><init>(I)V

    aput-object v1, v0, v5

    sput-object v0, Lcom/evancharlton/mileage/FillupInfoActivity;->STATS:[Lcom/evancharlton/mileage/provider/Statistic;

    .line 51
    new-array v0, v6, [Lcom/evancharlton/mileage/provider/StatisticsGroup;

    new-instance v1, Lcom/evancharlton/mileage/provider/StatisticsGroup;

    const v2, 0x7f07006c

    sget-object v3, Lcom/evancharlton/mileage/FillupInfoActivity;->INFO:[Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v2, v3}, Lcom/evancharlton/mileage/provider/StatisticsGroup;-><init>(I[Lcom/evancharlton/mileage/provider/Statistic;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/evancharlton/mileage/provider/StatisticsGroup;

    const v2, 0x7f07006e

    sget-object v3, Lcom/evancharlton/mileage/FillupInfoActivity;->STATS:[Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v2, v3}, Lcom/evancharlton/mileage/provider/StatisticsGroup;-><init>(I[Lcom/evancharlton/mileage/provider/Statistic;)V

    aput-object v1, v0, v5

    sput-object v0, Lcom/evancharlton/mileage/FillupInfoActivity;->GROUPS:[Lcom/evancharlton/mileage/provider/StatisticsGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mLayouts:Landroid/util/SparseArray;

    .line 193
    return-void
.end method


# virtual methods
.method public addInformation(Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;)V
    .locals 7
    .param p1, "update"    # Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;

    .prologue
    .line 162
    iget-object v3, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mLayouts:Landroid/util/SparseArray;

    iget v4, p1, Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;->key:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/FillupInfoActivity$Holder;

    .line 163
    .local v0, "holder":Lcom/evancharlton/mileage/FillupInfoActivity$Holder;
    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v2, v0, Lcom/evancharlton/mileage/FillupInfoActivity$Holder;->view:Landroid/view/ViewGroup;

    .line 166
    .local v2, "view":Landroid/view/ViewGroup;
    const v3, 0x1020015

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 168
    .local v1, "stat":Landroid/widget/TextView;
    iget-object v3, v0, Lcom/evancharlton/mileage/FillupInfoActivity$Holder;->statistic:Lcom/evancharlton/mileage/provider/Statistic;

    iget-object v4, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    iget-wide v5, p1, Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;->data:D

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/evancharlton/mileage/provider/Statistic;->format(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 159
    :goto_0
    :pswitch_0
    return-void

    .line 135
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/FillupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dao_item_id"

    invoke-virtual {p0}, Lcom/evancharlton/mileage/FillupInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "dao_item_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 142
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/FillupInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "dao_item_id"

    iget-object v2, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getPrevious()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Lcom/evancharlton/mileage/FillupInfoActivity;->finish()V

    .line 146
    invoke-static {p0}, Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;->get(Landroid/app/Activity;)Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;

    move-result-object v1

    const v2, 0x7f040001

    const v3, 0x7f040002

    invoke-virtual {v1, v2, v3}, Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;->overridePendingTransition(II)V

    goto :goto_0

    .line 151
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/FillupInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "dao_item_id"

    iget-object v2, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getNext()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Lcom/evancharlton/mileage/FillupInfoActivity;->finish()V

    .line 155
    invoke-static {p0}, Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;->get(Landroid/app/Activity;)Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;

    move-result-object v1

    const/high16 v2, 0x7f040000

    const v3, 0x7f040003

    invoke-virtual {v1, v2, v3}, Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;->overridePendingTransition(II)V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x7f09001e
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v2, 0x7f03000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/evancharlton/mileage/FillupInfoActivity;->setContentView(I)V

    .line 73
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    const v2, 0x7f09001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/evancharlton/mileage/FillupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    .line 76
    .local v20, "previous":Landroid/widget/Button;
    const v2, 0x7f09001e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/evancharlton/mileage/FillupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 78
    .local v19, "next":Landroid/widget/Button;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v2, 0x7f090022

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/evancharlton/mileage/FillupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v2, 0x7f090021

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/evancharlton/mileage/FillupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mStatContainer:Landroid/widget/LinearLayout;

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/FillupInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "dao_item_id"

    const-wide/16 v5, -0x1

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 85
    .local v15, "id":J
    sget-object v2, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 86
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/FillupInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 87
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v2, Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v2, v9}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/database/Cursor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    .line 88
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getVehicleId()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/evancharlton/mileage/dao/Vehicle;->loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    .line 92
    sget-object v8, Lcom/evancharlton/mileage/FillupInfoActivity;->GROUPS:[Lcom/evancharlton/mileage/provider/StatisticsGroup;

    .local v8, "arr$":[Lcom/evancharlton/mileage/provider/StatisticsGroup;
    array-length v0, v8

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    move v14, v13

    .end local v13    # "i$":I
    .local v14, "i$":I
    :goto_0
    move/from16 v0, v18

    if-ge v14, v0, :cond_1

    aget-object v11, v8, v14

    .line 93
    .local v11, "group":Lcom/evancharlton/mileage/provider/StatisticsGroup;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030004

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mStatContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/evancharlton/mileage/views/DividerView;

    .line 95
    .local v10, "divider":Lcom/evancharlton/mileage/views/DividerView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mStatContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {v11}, Lcom/evancharlton/mileage/provider/StatisticsGroup;->getLabel()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/evancharlton/mileage/views/DividerView;->setText(I)V

    .line 98
    invoke-virtual {v11}, Lcom/evancharlton/mileage/provider/StatisticsGroup;->getStatistics()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v14    # "i$":I
    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/evancharlton/mileage/provider/Statistic;

    .line 99
    .local v21, "stat":Lcom/evancharlton/mileage/provider/Statistic;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mStatContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 101
    .local v17, "layout":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mStatContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mLayouts:Landroid/util/SparseArray;

    invoke-virtual/range {v21 .. v21}, Lcom/evancharlton/mileage/provider/Statistic;->getLabel()I

    move-result v4

    new-instance v5, Lcom/evancharlton/mileage/FillupInfoActivity$Holder;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lcom/evancharlton/mileage/FillupInfoActivity$Holder;-><init>(Landroid/view/ViewGroup;Lcom/evancharlton/mileage/provider/Statistic;)V

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 105
    const v2, 0x1020014

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Lcom/evancharlton/mileage/provider/Statistic;->getLabel(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 92
    .end local v17    # "layout":Landroid/view/ViewGroup;
    .end local v21    # "stat":Lcom/evancharlton/mileage/provider/Statistic;
    :cond_0
    add-int/lit8 v13, v14, 0x1

    .local v13, "i$":I
    move v14, v13

    .end local v13    # "i$":I
    .restart local v14    # "i$":I
    goto/16 :goto_0

    .line 110
    .end local v10    # "divider":Lcom/evancharlton/mileage/views/DividerView;
    .end local v11    # "group":Lcom/evancharlton/mileage/provider/StatisticsGroup;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/evancharlton/mileage/dao/Fillup;->loadPrevious(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/evancharlton/mileage/dao/Fillup;->setPrevious(Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/evancharlton/mileage/dao/Fillup;->loadNext(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/evancharlton/mileage/dao/Fillup;->setNext(Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->hasPrevious()Z

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->hasNext()Z

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    const v2, 0x7f090020

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/evancharlton/mileage/FillupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/evancharlton/mileage/views/FormattedDateView;

    .line 117
    .local v12, "header":Lcom/evancharlton/mileage/views/FormattedDateView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/evancharlton/mileage/views/FormattedDateView;->setText(J)V

    .line 119
    const v2, 0x7f0700e1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v12}, Lcom/evancharlton/mileage/views/FormattedDateView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/evancharlton/mileage/FillupInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/evancharlton/mileage/FillupInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    new-instance v0, Lcom/evancharlton/mileage/tasks/FillupInfoTask;

    iget-object v1, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;-><init>(Lcom/evancharlton/mileage/dao/Fillup;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mInfoTask:Lcom/evancharlton/mileage/tasks/FillupInfoTask;

    .line 126
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mInfoTask:Lcom/evancharlton/mileage/tasks/FillupInfoTask;

    invoke-virtual {v0, p0}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->attach(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mInfoTask:Lcom/evancharlton/mileage/tasks/FillupInfoTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    return-void
.end method
