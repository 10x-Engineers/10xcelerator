class c_2346_1;
    integer i = -389;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2346_1;
    c_2346_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx10xz10xx0xxxz00xzzzzx0x1xxx0xzxxxzzxzzxzxxzxzzzxxzzxzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
