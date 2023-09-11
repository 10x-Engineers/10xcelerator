class c_2727_1;
    integer i = -453;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2727_1;
    c_2727_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1zz1xzxx110zxz11zxx11zx1xz01x0zzzxzzxzxxxzxxxzzxzxzxzxxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
