class c_3182_1;
    integer i = -529;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3182_1;
    c_3182_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx110x0zz0000x11zzzz01x110001xxxxxxxxxxxzxzxxxzzzzxxzzxxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
