.class public Lcom/evancharlton/mileage/FillupListActivity;
.super Landroid/app/Activity;
.source "FillupListActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FillupListActivity"


# instance fields
.field private mAdapter:Lcom/evancharlton/mileage/adapters/FillupAdapter;

.field private final mCalculationFinishedReceiver:Landroid/content/BroadcastReceiver;

.field private mList:Landroid/widget/ListView;

.field private mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

.field private mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Lcom/evancharlton/mileage/FillupListActivity$1;

    invoke-direct {v0, p0}, Lcom/evancharlton/mileage/FillupListActivity$1;-><init>(Lcom/evancharlton/mileage/FillupListActivity;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity;->mCalculationFinishedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/evancharlton/mileage/FillupListActivity;)Lcom/evancharlton/mileage/adapters/FillupAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/FillupListActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity;->mAdapter:Lcom/evancharlton/mileage/adapters/FillupAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/evancharlton/mileage/FillupListActivity;)Lcom/evancharlton/mileage/dao/Vehicle;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/FillupListActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    return-object v0
.end method

.method static synthetic access$102(Lcom/evancharlton/mileage/FillupListActivity;Lcom/evancharlton/mileage/dao/Vehicle;)Lcom/evancharlton/mileage/dao/Vehicle;
    .locals 0
    .param p0, "x0"    # Lcom/evancharlton/mileage/FillupListActivity;
    .param p1, "x1"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/evancharlton/mileage/FillupListActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/evancharlton/mileage/FillupListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/evancharlton/mileage/FillupListActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/evancharlton/mileage/FillupListActivity;->calculate()V

    return-void
.end method

.method static synthetic access$300(Lcom/evancharlton/mileage/FillupListActivity;J)V
    .locals 0
    .param p0, "x0"    # Lcom/evancharlton/mileage/FillupListActivity;
    .param p1, "x1"    # J

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/evancharlton/mileage/FillupListActivity;->openFillup(J)V

    return-void
.end method

.method private calculate()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-static {p0, v0}, Lcom/evancharlton/mileage/services/RecalculateEconomyService;->run(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)V

    .line 178
    return-void
.end method

.method private editFillup(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/FillupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dao_item_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupListActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method private openFillup(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/FillupInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dao_item_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupListActivity;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method private showDeleteDialog(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 143
    new-instance v0, Lcom/evancharlton/mileage/FillupListActivity$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/evancharlton/mileage/FillupListActivity$4;-><init>(Lcom/evancharlton/mileage/FillupListActivity;J)V

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupListActivity;->showDeleteDialog(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method


# virtual methods
.method protected final getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;
    .locals 5

    .prologue
    .line 181
    iget-object v1, p0, Lcom/evancharlton/mileage/FillupListActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/evancharlton/mileage/dao/Vehicle;->loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v0

    .line 182
    .local v0, "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    if-nez v0, :cond_0

    .line 183
    const-string v1, "FillupListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load vehicle #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupListActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load vehicle #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupListActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_0
    return-object v0
.end method

.method protected initUI()V
    .locals 2

    .prologue
    .line 73
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/CursorSpinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    .line 74
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    new-instance v1, Lcom/evancharlton/mileage/FillupListActivity$2;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/FillupListActivity$2;-><init>(Lcom/evancharlton/mileage/FillupListActivity;)V

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/views/CursorSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/evancharlton/mileage/FillupListActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    .line 93
    new-instance v0, Lcom/evancharlton/mileage/adapters/FillupAdapter;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/FillupListActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/evancharlton/mileage/adapters/FillupAdapter;-><init>(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity;->mAdapter:Lcom/evancharlton/mileage/adapters/FillupAdapter;

    .line 94
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity;->mList:Landroid/widget/ListView;

    .line 95
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/evancharlton/mileage/FillupListActivity;->mAdapter:Lcom/evancharlton/mileage/adapters/FillupAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/evancharlton/mileage/FillupListActivity$3;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/FillupListActivity$3;-><init>(Lcom/evancharlton/mileage/FillupListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    invoke-direct {p0}, Lcom/evancharlton/mileage/FillupListActivity;->calculate()V

    .line 105
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 117
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 118
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 120
    :pswitch_0
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v2, v3}, Lcom/evancharlton/mileage/FillupListActivity;->editFillup(J)V

    goto :goto_0

    .line 123
    :pswitch_1
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v2, v3}, Lcom/evancharlton/mileage/FillupListActivity;->showDeleteDialog(J)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x7f070029
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupListActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/evancharlton/mileage/FillupListActivity;->initUI()V

    .line 56
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const v2, 0x7f07002a

    const v1, 0x7f070029

    const/4 v0, 0x0

    .line 109
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 111
    invoke-interface {p1, v0, v2, v0, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 112
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 113
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity;->mCalculationFinishedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 70
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity;->mAdapter:Lcom/evancharlton/mileage/adapters/FillupAdapter;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/adapters/FillupAdapter;->requery()V

    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity;->mCalculationFinishedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.evancharlton.mileage.services.RecalculateEconomyService.CALCULATION_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/evancharlton/mileage/FillupListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    return-void
.end method

.method protected showDeleteDialog(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "deleteAction"    # Ljava/lang/Runnable;

    .prologue
    .line 154
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070032

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/evancharlton/mileage/FillupListActivity$6;

    invoke-direct {v3, p0, p1}, Lcom/evancharlton/mileage/FillupListActivity$6;-><init>(Lcom/evancharlton/mileage/FillupListActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/evancharlton/mileage/FillupListActivity$5;

    invoke-direct {v3, p0}, Lcom/evancharlton/mileage/FillupListActivity$5;-><init>(Lcom/evancharlton/mileage/FillupListActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 173
    .local v0, "deleteDialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 174
    return-void
.end method
