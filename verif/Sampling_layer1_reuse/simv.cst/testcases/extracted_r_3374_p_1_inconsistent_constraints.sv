class c_3374_1;
    integer i = -561;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3374_1;
    c_3374_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z101011xxxx10zx10010xz1z111z10xxzzxzzxxzzxxxxzxzxxzxzxzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram