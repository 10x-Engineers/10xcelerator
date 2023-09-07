class c_1249_1;
    integer i = -207;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1249_1;
    c_1249_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1xx0xxzzx0001xxx0x10xzzxxz01xxzxzzzzxzxzxzzzxzxzxzxzxxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
