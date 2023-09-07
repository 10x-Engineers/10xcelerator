class c_417_1;
    integer i = -68;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_417_1;
    c_417_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1xz1110zxx10zz0000z1zz011zx010xxzzzzxzzxxzxxzzzzxzzxzzxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
