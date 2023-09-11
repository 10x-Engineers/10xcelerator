class c_176_1;
    integer i = -28;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_176_1;
    c_176_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx10x0z110xzz11xzz1x10zx001xx00zxxxxzzzzxxzzzzzzxxxzzxzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
