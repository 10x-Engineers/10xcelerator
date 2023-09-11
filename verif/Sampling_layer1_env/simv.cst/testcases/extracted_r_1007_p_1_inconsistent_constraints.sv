class c_1007_1;
    integer i = -166;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1007_1;
    c_1007_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxzxx1101z0111x01xzx11z1z100zxzzxxzxzxzxzxzxzzzxzxzxzxxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
