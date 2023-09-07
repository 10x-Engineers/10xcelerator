class c_78_1;
    integer i = -11;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_78_1;
    c_78_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x011x011xzzz1110z11zz0zx00zzx0xxxxzzxxxxxxzzzxzxxxxzzxxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
