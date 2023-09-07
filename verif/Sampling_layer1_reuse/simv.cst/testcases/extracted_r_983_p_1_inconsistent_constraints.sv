class c_983_1;
    integer i = -162;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_983_1;
    c_983_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11010xxx0z1x01x1x0001zxzzx100001xxxzxxzxxxzzxzxzxzzxxzzxzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
