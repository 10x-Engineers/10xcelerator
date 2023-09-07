class c_1827_1;
    integer i = -303;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1827_1;
    c_1827_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx111110x1zz01xx0x10z11011x1xz0zxzxxxxzzxxzxzzzzxxxxxzxxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
