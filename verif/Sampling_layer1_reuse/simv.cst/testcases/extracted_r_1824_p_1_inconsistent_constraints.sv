class c_1824_1;
    integer i = -302;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1824_1;
    c_1824_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z0zxxxzz1x1xxxxzzx0zx1z010z0zzxxxzzxxxxxxzxxxzzxxzzxxzxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
