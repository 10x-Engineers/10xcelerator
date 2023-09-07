class c_1678_1;
    integer i = -278;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1678_1;
    c_1678_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z10zz0x10xxx1100zz011x1xz10z11zzxzxxzxzxzzzzzzzzxxxxxxxxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
