class c_2957_1;
    integer i = -491;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2957_1;
    c_2957_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz0z1zxzxz1xx110zxz000xxxxx1zx1xzxzzxxxzzzzzxxxxxxzxxzzzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
