class c_3305_1;
    integer i = -549;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3305_1;
    c_3305_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010xx10x1xx1xxxz1xz11zz0001z0z0xzzzzxxxxxxxzzxxzzxxxxxzzxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
