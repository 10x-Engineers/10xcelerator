class c_2480_1;
    integer i = -412;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2480_1;
    c_2480_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz11110xzx1xz0xzzz1000xzzzx1zx0xzxxxxxxxxxzzxzzxzzzzzzxzxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
