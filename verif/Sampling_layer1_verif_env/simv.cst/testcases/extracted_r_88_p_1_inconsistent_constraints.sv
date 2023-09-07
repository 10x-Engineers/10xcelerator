class c_88_1;
    integer i = -13;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_88_1;
    c_88_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx0x0x101zzxz00xzxz0z1xxz1zzx1xxzzzzxzzxzxzxzzxzzzzzxxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
