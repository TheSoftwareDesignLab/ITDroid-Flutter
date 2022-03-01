.class public Lcom/evancharlton/mileage/ServiceIntervalsListActivity;
.super Lcom/evancharlton/mileage/BaseListActivity;
.source "ServiceIntervalsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MENU_CREATE:I = 0x1

.field private static final MENU_TEMPLATES:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/evancharlton/mileage/BaseListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFrom()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "description"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "intervals/"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/evancharlton/mileage/dao/ServiceInterval;->loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/ServiceInterval;

    move-result-object v0

    .line 101
    .local v0, "interval":Lcom/evancharlton/mileage/dao/ServiceInterval;
    packed-switch p2, :pswitch_data_0

    .line 114
    :goto_0
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 115
    return-void

    .line 104
    :pswitch_1
    invoke-virtual {v0, p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->delete(Landroid/content/Context;)Z

    goto :goto_0

    .line 108
    :pswitch_2
    invoke-virtual {v0, p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->deleteAlarm(Landroid/content/Context;)V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/evancharlton/mileage/dao/ServiceInterval;->scheduleAlarm(Landroid/content/Context;J)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 130
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/ServiceIntervalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 134
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x7f09000c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 31
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 32
    .local v0, "id":J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 33
    const v3, 0x7f070062

    invoke-virtual {p0, v3}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->showDialog(I)V

    .line 35
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/evancharlton/mileage/dao/ServiceInterval;->loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/ServiceInterval;

    move-result-object v0

    .line 41
    .local v0, "interval":Lcom/evancharlton/mileage/dao/ServiceInterval;
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getVehicleId()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/evancharlton/mileage/dao/Vehicle;->loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v1

    .line 42
    .local v1, "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    packed-switch p1, :pswitch_data_0

    .line 54
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 44
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040013

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070064

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070062

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070063

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Vehicle;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x7f070062
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 77
    const/4 v0, 0x1

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 79
    const/4 v0, 0x2

    const v1, 0x7f070024

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020005

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 81
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 72
    const-class v0, Lcom/evancharlton/mileage/ServiceIntervalActivity;

    invoke-virtual {p0, p1, p2, v0}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->loadItem(JLjava/lang/Class;)V

    .line 73
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 86
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 94
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 88
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/evancharlton/mileage/ServiceIntervalActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setupEmptyView()V
    .locals 4

    .prologue
    .line 119
    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 120
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030009

    iget-object v3, p0, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void
.end method
