class c_859_1;
    integer i = -142;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_859_1;
    c_859_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110xzzz1x0010zxzzxz0zxz11100z1z1xxzzzzzzzzxxzzzzzzzxzxxzxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
