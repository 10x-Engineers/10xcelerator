class c_1393_1;
    integer i = -231;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1393_1;
    c_1393_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0001zz100x0z001010zx100xz001z0xxxzxzxxzxxxzzzxzzxxzzxzzxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
