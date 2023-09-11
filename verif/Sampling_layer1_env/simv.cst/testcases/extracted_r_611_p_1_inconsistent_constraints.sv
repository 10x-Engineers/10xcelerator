class c_611_1;
    integer i = -100;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_611_1;
    c_611_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z101z1z10110x0z0010zxz00zzxzz0z1zzzzxzxxzxxzxxxxxzzzxxzxxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
