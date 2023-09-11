class c_1415_1;
    integer i = -234;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1415_1;
    c_1415_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z11zzx1z0z1z0zzxxxx0xx101zxxz0xxxxxzzxzzzzzxzzzzzzzzxzxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
