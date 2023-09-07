class c_896_1;
    integer i = -148;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_896_1;
    c_896_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0z10xxx1xxx0x1zxz00zzx011xxx1xxxzxzxzzzzzxzxxzzxxxzxzxxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
