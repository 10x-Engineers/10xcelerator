class c_748_1;
    integer i = -123;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_748_1;
    c_748_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01z0zx1zzxx01x0zxz1z0xx0z110x0zxzxzxxxxxzxzzxxxzxzxzxxxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
