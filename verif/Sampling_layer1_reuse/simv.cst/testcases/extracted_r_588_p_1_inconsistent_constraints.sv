class c_588_1;
    integer i = -96;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_588_1;
    c_588_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0z0x101x1zz1101x0x11z11zxzz100zzxzzzzzzxxxzzxzzxxzxxzzzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
