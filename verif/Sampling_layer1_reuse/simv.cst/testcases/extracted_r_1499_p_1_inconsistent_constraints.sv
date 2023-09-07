class c_1499_1;
    integer i = -248;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1499_1;
    c_1499_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01110xz0xzx1xz0zz11zz100x0xx0z0xxxxzxzxxxxxzxzzzzzxxxzxzzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
