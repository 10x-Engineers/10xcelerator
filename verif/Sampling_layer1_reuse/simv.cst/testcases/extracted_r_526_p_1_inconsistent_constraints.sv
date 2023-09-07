class c_526_1;
    integer i = -86;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_526_1;
    c_526_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1x10zz1xz00x1zz0101z001x011xzzxzxzxxxzzxzzxxzxxxxzxzxzxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
