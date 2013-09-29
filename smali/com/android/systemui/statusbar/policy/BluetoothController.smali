.class public Lcom/android/systemui/statusbar/policy/BluetoothController;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.BluetoothController"


# instance fields
.field private mBondedDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContentDescriptionId:I

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mIconId:I

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconViews:Ljava/util/ArrayList;

    const v2, 0x7f0200c9

    iput v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContentDescriptionId:I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBondedDevices:Ljava/util/Set;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mChangeCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleAdapterStateChange(I)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleConnectionStateChange(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->refreshViews()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->updateBondedBluetoothDevices()V

    return-void
.end method

.method private updateBondedBluetoothDevices()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBondedDevices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBondedDevices:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStateChangedCallback(Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBondedBluetoothDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBondedDevices:Ljava/util/Set;

    return-object v0
.end method

.method public handleAdapterStateChange(I)V
    .locals 1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleConnectionStateChange(I)V
    .locals 2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f0200ca

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconId:I

    const v1, 0x7f0c009e

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContentDescriptionId:I

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v1, 0x7f0200c9

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconId:I

    const v1, 0x7f0c009f

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContentDescriptionId:I

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleAdapterStateChange(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->refreshViews()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->updateBondedBluetoothDevices()V

    return-void

    :cond_1
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleConnectionStateChange(I)V

    goto :goto_0

    :cond_2
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public refreshViews()V
    .locals 7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContentDescriptionId:I

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContentDescriptionId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    invoke-interface {v1, v5}, Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;->onBluetoothStateChange(Z)V

    goto :goto_3

    :cond_3
    return-void
.end method
