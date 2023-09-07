class c_517_1;
    integer i = -85;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_517_1;
    c_517_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110x101z0xzzz10x001x0z0011110011xxxxzzzzzzxzzzxxxxzxzxzxxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
