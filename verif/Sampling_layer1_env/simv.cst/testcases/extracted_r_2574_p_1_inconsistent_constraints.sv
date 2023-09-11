class c_2574_1;
    integer i = -427;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2574_1;
    c_2574_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1110xz11z0zx11xx0zxzxxz1xxx1z0z0zxzzxxzxxzxxxzxzxzxxxzxzxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
