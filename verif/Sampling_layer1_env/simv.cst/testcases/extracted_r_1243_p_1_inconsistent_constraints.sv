class c_1243_1;
    integer i = -206;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1243_1;
    c_1243_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z001xz0zxz100xz11010z1x1x11z110zxxzzzzzxzxzzzxxxxzzxxzzxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
